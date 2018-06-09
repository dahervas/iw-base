package es.ucm.fdi.iw.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletResponse;

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
import es.ucm.fdi.iw.model.Photo;
import es.ucm.fdi.iw.model.PhotoCollection;
import es.ucm.fdi.iw.model.Product;
import es.ucm.fdi.iw.model.User;

@Controller	
@RequestMapping("admin")
public class AdminController {
	
	private static Logger log = Logger.getLogger(AdminController.class);
	
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
		m.addAttribute("users", entityManager
				.createQuery("select u from User u").getResultList());
		
		return "admin";	
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	@Transactional
	public String addUser(
			@RequestParam String login, 
			@RequestParam String password, 
			@RequestParam(required=false) String isAdmin, String isModer, Model m) {
		User u = new User();
		u.setLogin(login);
		u.setPassword(passwordEncoder.encode(password));
		if("on".equals(isAdmin) && "on".equals(isModer)) {
			u.setRoles("ADMIN,MODER");
		}
		else if("on".equals(isAdmin) && !"on".equals(isModer)) {
			u.setRoles("ADMIN");
		}
		else if(!"on".equals(isAdmin) && "on".equals(isModer)) {
			u.setRoles("MODER");
		}
		else {
			u.setRoles("USER");
		}
		
		entityManager.persist(u);
		
		entityManager.flush();
		m.addAttribute("users", entityManager
				.createQuery("select u from User u").getResultList());
		
		return "admin";
	}
	
	@RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
	@Transactional
	public String deleteUser(
			@RequestParam String id, 
			Model m) {
		
		long idUsuario = Long.parseLong(id);
				
		User b = entityManager.getReference(User.class, idUsuario);
		
		if(b.getFotoPerfil() != null) {
			Photo f = entityManager.getReference(Photo.class, b.getFotoPerfil().getId());
			f.setIdExterno(null);
			entityManager.persist(f);
		}
		for(Collection c : b.getOwnedCollections()) {
						
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
			
			entityManager.remove(c);
		
		}
		for(Product p: b.getOwnedProducts()) {
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
			entityManager.remove(p);
		}
		
		entityManager.remove(b);		
				
		entityManager.flush();
		m.addAttribute("users", entityManager
				.createQuery("select u from User u").getResultList());
		
		return "admin";
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
