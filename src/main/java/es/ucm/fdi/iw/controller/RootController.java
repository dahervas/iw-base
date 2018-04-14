package es.ucm.fdi.iw.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import es.ucm.fdi.iw.model.Photo;
import es.ucm.fdi.iw.model.Product;

@Controller	
public class RootController {

	private static Logger log = Logger.getLogger(RootController.class);
	
	@Autowired
	private EntityManager entityManager;
	
	public void insertarMuchosProductos() {
		Product p = new Product();
		p.setCantidad(1);
		p.setNombre("Zuncho 1");
		p.setDescripcion("Ejemplo de producto");
		p.setEstrellitas(2);
		p.setPrestado((byte)0);
		p.setCantidad(2);
		//entityManager.persist(p);
		
		Photo f = new Photo();
		f.setUrl("http://www.proembal.com.co/img/productos-1/1-b.jpg");
		f.setIdExterno(p);
		entityManager.persist(f);
		
		Photo f3 = new Photo();
		f3.setUrl("http://insurgente.org/wp-content/uploads/2017/06/comparitrparacre.png");
		f3.setIdExterno(p);
		entityManager.persist(f3);
		Photo f4 = new Photo();
		f4.setUrl("http://insurgente.org/wp-content/uploads/2017/06/comparitrparacre.png");
		f4.setIdExterno(p);
		entityManager.persist(f4);
		Photo f5 = new Photo();
		f5.setUrl("http://insurgente.org/wp-content/uploads/2017/06/comparitrparacre.png");
		f5.setIdExterno(p);
		entityManager.persist(f5);
		Photo f6 = new Photo();
		f6.setUrl("http://insurgente.org/wp-content/uploads/2017/06/comparitrparacre.png");
		f6.setIdExterno(p);
		entityManager.persist(f6);
		
		List<Photo> lista = new ArrayList<>();
		lista.add(f3);
		lista.add(f4);
		lista.add(f5);
		lista.add(f6);
		
		//Product p3 = entityManager.getReference(Product.class, f.getIdExterno());
		p.setImagenPrincipal(f);
		p.setFotos(lista);
		entityManager.persist(p);
		
		Product p2 = new Product();
		p2.setCantidad(2);
		p2.setNombre("Zuncho 2");
		p2.setDescripcion("Ejemplo de producto");
		p2.setEstrellitas(5);
		p2.setPrestado((byte)0);
		p2.setCantidad(3);
		//entityManager.persist(p2);
		
		Photo f2 = new Photo();
		f2.setUrl("http://placehold.it/400x300");
		f2.setIdExterno(p2);
		entityManager.persist(f2);
		
		Photo f7 = new Photo();
		f7.setUrl("http://insurgente.org/wp-content/uploads/2017/06/comparitrparacre.png");
		f7.setIdExterno(p2);
		entityManager.persist(f7);
		
		Photo f8 = new Photo();
		f8.setUrl("http://insurgente.org/wp-content/uploads/2017/06/comparitrparacre.png");
		f8.setIdExterno(p2);
		entityManager.persist(f8);
		
		Photo f9 = new Photo();
		f9.setUrl("http://insurgente.org/wp-content/uploads/2017/06/comparitrparacre.png");
		f9.setIdExterno(p2);
		entityManager.persist(f9);
		
		Photo f0 = new Photo();
		f0.setUrl("http://insurgente.org/wp-content/uploads/2017/06/comparitrparacre.png");
		f0.setIdExterno(p2);
		entityManager.persist(f0);
		
		List<Photo> lista2 = new ArrayList<>();
		lista2.add(f7);
		lista2.add(f8);
		lista2.add(f9);
		lista2.add(f0);
		
		//Product p3 = entityManager.getReference(Product.class, f.getIdExterno());
		p2.setImagenPrincipal(f2);
		p2.setFotos(lista2);
		entityManager.persist(p2);
		


	}
	
	
    @ModelAttribute
    public void addAttributes(Model model) {
        model.addAttribute("s", "/static");
    }
    
 

	@GetMapping({"/", "/index"})
	public String root(Model model, Principal principal) {
		log.info(principal.getName() + " de tipo " + principal.getClass());		
		// org.springframework.security.core.userdetails.User
		model.addAttribute("users", entityManager
				.createQuery("select u from User u").getResultList());
		model.addAttribute("ps", entityManager
				.createQuery("select p from Product p").getResultList());
		/*model.addAttribute("photo", entityManager
				.createQuery("select t from Photos t").getResultList());*/
		return "home";
	}
	
	@GetMapping("/bd")
	@Transactional
	public String bd() {
		insertarMuchosProductos();
		return "bd";
	}
	@GetMapping("/login")
	
	public String login() {
		return "login";
	}
	
	@GetMapping("/profile")
	public String profile() {
		return "profile";
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "logout";
	}
	
	@GetMapping("/upload")
	public String upload() {
		return "upload";
	}
	
	@GetMapping("/search")
	public String search() {
		return "search";
	}
	
	@GetMapping("/collections")
	public String collections() {
		return "collections";
	}
	
	
	@GetMapping("/product/{id}")
	public String product(Model m, @PathVariable long id) {
		String query = "select p from Product p where p.id = " + id;
		m.addAttribute("elementos", entityManager.createQuery(query).getResultList());
		return "product";
	}
	
	@GetMapping("/nuevoProducto")
	public String nuevoProducto() {
		return "nuevoProducto";
	}
}
