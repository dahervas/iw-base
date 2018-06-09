package es.ucm.fdi.iw.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import es.ucm.fdi.iw.LocalData;
import es.ucm.fdi.iw.model.Collection;
import es.ucm.fdi.iw.model.Message;
import es.ucm.fdi.iw.model.Photo;
import es.ucm.fdi.iw.model.PhotoCollection;
import es.ucm.fdi.iw.model.Product;
import es.ucm.fdi.iw.model.User;

import es.ucm.fdi.iw.controller.RootController;

@Controller	
@RequestMapping("moder")
public class ModeradorController {
	
	private static Logger log = Logger.getLogger(ModeradorController.class);
	
	private RootController rootController = new RootController();
	
	@Autowired
	private LocalData localData;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private EntityManager entityManager;

    @ModelAttribute
    public void addAttributes(Model model) {
        model.addAttribute("s", "../static");
    }

	@GetMapping({"", "/"})
	public String root(Model m) {
		m.addAttribute("productos", entityManager
				.createQuery("select p from Product p").getResultList());
		m.addAttribute("colecciones", entityManager
				.createQuery("select c from Collection c").getResultList());
		
		return "moder";	
	}

	@RequestMapping(value = "/rechazar", method = RequestMethod.POST)
	@Transactional
	public String rechazar(
			@RequestParam("usuario") String usuario, 
			@RequestParam("eliminar") String eliminar,
			@RequestParam("tipo") String tipo,
			Model m, HttpSession session) {
		
		long idUsuario = Long.parseLong(usuario);
		long idEliminar = Long.parseLong(eliminar);
		
		User b = entityManager.getReference(User.class, idUsuario);
		if(tipo.equals("coleccion")) {
			Collection c = entityManager.getReference(Collection.class, idEliminar);
			
			if(c.getPropietario() != null) {
				b.getOwnedCollections().remove(c);
				entityManager.persist(b);
			}
			if(c.getImagenPrincipal() != null) {
				PhotoCollection f = entityManager.getReference(PhotoCollection.class, c.getImagenPrincipal().getId());
				f.setIdExterno(null);
				entityManager.persist(f);
			}
			for(Product p: c.getProductos()) {
				if(p.getColecciones().contains(c)) {
					p.getColecciones().remove(c);
					entityManager.persist(p);
				}
			}
			String mensaje = "Hola altruista. \nEstá genial compartir con todos pero tu coleccion " + c.getNombre() + 
					" no es adecuado para la web. \nEsperemos que la próxima colección que crees sea adecuada." + 
					"\nUn saludo, el equipo de Tamaa :)";
			
					
			User s = new User();
			s= (User)session.getAttribute("user");
			
			Message ms = new Message();
			
			ms.setIdAddressee(b);			
			ms.setIdSender(s);			
			ms.setmessage(mensaje);
			
			entityManager.persist(ms);
			entityManager.flush();
			
			entityManager.remove(c);
		}
		else if(tipo.equals("producto")){
			Product p = entityManager.getReference(Product.class, idEliminar);
			
			if(p.getPropietario() != null) {
				b.getOwnedProducts().remove(p);
				entityManager.persist(b);
			}
			if(p.getImagenPrincipal() != null) {
				Photo f = entityManager.getReference(Photo.class, p.getImagenPrincipal().getId());
				f.setIdExterno(null);
				entityManager.persist(f);
				
			}
			for	(Photo a : p.getFotos()) {
				a.setIdExterno(null);
				entityManager.persist(a);
			}
			for(Collection c : p.getColecciones()) {
				if(c.getProductos().contains(p)){
					c.getProductos().remove(p);
					entityManager.persist(c);
				}
			}
			
			String mensaje = "Hola altruista. \nEstá genial compartir con todos pero tu producto " + p.getNombre() + 
					" no es adecuado para la web. \nEsperemos que el próximo producto que subas sea adecuado." + 
					"\nUn saludo, el equipo de Tamaa :)";
			
					
			User s = new User();
			s= (User)session.getAttribute("user");
			
			Message ms = new Message();
			
			ms.setIdAddressee(b);			
			ms.setIdSender(s);			
			ms.setmessage(mensaje);
			
			entityManager.persist(ms);
			entityManager.flush();
			
			entityManager.remove(p);
		}
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/validar", method = RequestMethod.POST)
	@Transactional
	public String validar(
			@RequestParam("validar") String validar, 
			@RequestParam("tipo") String tipo,
			Model m, HttpSession session) {
		
		long idValidar = Long.parseLong(validar);
		
		if(tipo.equals("coleccion")) {
			Collection c = entityManager.getReference(Collection.class, idValidar);
			c.setRevisado(true);
			entityManager.persist(c);
		}
		else if(tipo.equals("producto")) {
			Product p = entityManager.getReference(Product.class, idValidar);
			
			p.setRevisado(true);
			
			entityManager.persist(p);
		}
		
		entityManager.flush();
		
		
		return "redirect:moder/";
	}
	
	/**
	 * Returns a users' photo
	 * @param id of user to get photo from
	 * @return
	 */
	@RequestMapping(value="/photo/{id}", method = RequestMethod.GET, produces = MediaType.IMAGE_JPEG_VALUE)
	public void userPhoto(@PathVariable("id") String id, 
			HttpServletResponse response) {
	    File f = localData.getFile("user", id);
	    InputStream in = null;
	    try {
		    if (f.exists()) {
		    	in = new BufferedInputStream(new FileInputStream(f));
		    } else {
		    	in = new BufferedInputStream(
		    			this.getClass().getClassLoader().getResourceAsStream("unknown-user.jpg"));
		    }
	    	FileCopyUtils.copy(in, response.getOutputStream());
	    } catch (IOException ioe) {
	    	log.info("Error retrieving file: " + f + " -- " + ioe.getMessage());
	    }
	}
	
	/**
	 * Uploads a photo for a user
	 * @param id of user 
	 * @param photo to upload
	 * @return
	 */
	@RequestMapping(value="/photo/{id}", method=RequestMethod.POST)
    public @ResponseBody String handleFileUpload(@RequestParam("photo") MultipartFile photo,
    		@PathVariable("id") String id){
        if (!photo.isEmpty()) {
            try {
                byte[] bytes = photo.getBytes();
                BufferedOutputStream stream =
                        new BufferedOutputStream(
                        		new FileOutputStream(localData.getFile("user", id)));
                stream.write(bytes);
                stream.close();
                return "You successfully uploaded " + id + 
                		" into " + localData.getFile("user", id).getAbsolutePath() + "!";
            } catch (Exception e) {
                return "You failed to upload " + id + " => " + e.getMessage();
            }
        } else {
            return "You failed to upload a photo for " + id + " because the file was empty.";
        }
	}
	
}
