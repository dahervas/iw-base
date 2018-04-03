package es.ucm.fdi.iw.controller;

import java.security.Principal;

import javax.persistence.EntityManager;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import es.ucm.fdi.iw.model.Product;

@Controller	
public class RootController {

	private static Logger log = Logger.getLogger(RootController.class);
	
	public void insertarMuchosProductos() {
		Product p = new Product();
		p.setCantidad(1);
		p.setNombre("Zuncho 1");
		p.setDescripcion("Ejemplo de producto");
		p.setEstrellitas(2);
		p.setPrestado((byte)0);
		p.setCantidad(2);
		entityManager.persist(p);
		
		Product p2 = new Product();
		p2.setCantidad(2);
		p2.setNombre("Zuncho 2");
		p2.setDescripcion("Ejemplo de producto");
		p2.setEstrellitas(5);
		p2.setPrestado((byte)0);
		p2.setCantidad(3);
		entityManager.persist(p2);
	}
	
	@Autowired
	private EntityManager entityManager;

	
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
		return "home";
	}
	
	@GetMapping("/login")
	@Transactional
	public String login() {
		insertarMuchosProductos();
		
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
	
	@GetMapping("/product")
	public String product(Model m) {
		m.addAttribute("elementos", entityManager.createQuery("select p from Product p").getResultList());
		return "product";
	}
	
	@GetMapping("/nuevoProducto")
	public String nuevoProducto() {
		return "nuevoProducto";
	}
}
