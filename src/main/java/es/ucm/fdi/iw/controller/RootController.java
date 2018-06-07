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
import java.util.Random;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.tomcat.util.codec.binary.StringUtils;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

//import com.sun.mail.handlers.handler_base;

import es.ucm.fdi.iw.LocalData;
import es.ucm.fdi.iw.model.Collection;
import es.ucm.fdi.iw.model.CommentProduct;
import es.ucm.fdi.iw.model.Message;
import es.ucm.fdi.iw.model.Photo;
import es.ucm.fdi.iw.model.PhotoCollection;
import es.ucm.fdi.iw.model.Product;
import es.ucm.fdi.iw.model.User;
//import es.ucm.fdi.iw.model.Valoration;

@Controller	
public class RootController {

	private static Logger log = Logger.getLogger(RootController.class);
	
	@Autowired
	private LocalData localData;
	
	@Autowired
	private EntityManager entityManager;
	
	    @ModelAttribute
    public void addAttributes(Model model) {
        model.addAttribute("s", "/static");
    }
    	
	public void insertarProductosYColecciones() {
		
		
		Product p = new Product();
		p.setCantidad(1);
		p.setNombre("Zuncho 1");
		p.setDescripcion("Ejemplo de producto");
		//p.setEstrellas(2);
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
		//entityManager.persist(p);
		
		Product p2 = new Product();
		p2.setCantidad(2);
		p2.setNombre("Zuncho 2");
		p2.setDescripcion("Ejemplo de producto");
		//p2.setEstrellas(5);
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
		//entityManager.persist(p2);
		
		
		
		Collection c = new Collection();
		c.setNombre("Utensilios de cocina");
		c.setDescripcion("Encuentra todo lo que necesites para organizar una cena!");
		
		List<Product> listaProductos = new ArrayList<>();
		listaProductos.add(p);
		listaProductos.add(p2);
		
		c.setProductos(listaProductos);
		
				
		PhotoCollection imagenPrincipal = new PhotoCollection();
		imagenPrincipal.setUrl("/static/img/cocina.jpg");
		imagenPrincipal.setIdExterno(c);
		entityManager.persist(imagenPrincipal);
		
		c.setImagenPrincipal(imagenPrincipal);
		
		entityManager.persist(c);
		
		Collection c2 = new Collection();
		c2.setNombre("Ropa deportiva");
		c2.setDescripcion("¿Necesitas unas deportivas para un partido? Aquí las encontrarás");
		
		List<Product> listaProductos2 = new ArrayList();
		listaProductos2.add(p);
		listaProductos2.add(p2);
		
		c2.setProductos(listaProductos2);
		
				
		PhotoCollection imagenPrincipal2 = new PhotoCollection();
		imagenPrincipal2.setUrl("/static/img/deporte.jpg");
		imagenPrincipal2.setIdExterno(c2);
		entityManager.persist(imagenPrincipal2);
		
		c2.setImagenPrincipal(imagenPrincipal2);
		
		entityManager.persist(c2);
		
		
		Collection c3 = new Collection();
		c3.setNombre("Libros");
		c3.setDescripcion("¡Culturicémonos entre todos!");
		
		List<Product> listaProductos3 = new ArrayList();
		listaProductos3.add(p);
		listaProductos3.add(p2);
		
		c3.setProductos(listaProductos3);
		
				
		PhotoCollection imagenPrincipal3 = new PhotoCollection();
		imagenPrincipal3.setUrl("/static/img/libros.jpg");
		imagenPrincipal3.setIdExterno(c3);
		entityManager.persist(imagenPrincipal3);
		
		c3.setImagenPrincipal(imagenPrincipal3);
		
		entityManager.persist(c3);
		
		
		Collection c4 = new Collection();
		c4.setNombre("Música");
		c4.setDescripcion("¡Comparte tus discos favoritos!");
		
		List<Product> listaProductos4 = new ArrayList();
		listaProductos4.add(p);
		listaProductos4.add(p2);
		
		c4.setProductos(listaProductos4);
		
				
		PhotoCollection imagenPrincipal4 = new PhotoCollection();
		imagenPrincipal4.setUrl("/static/img/vinilos.jpg");
		imagenPrincipal4.setIdExterno(c4);
		entityManager.persist(imagenPrincipal4);
		
		c4.setImagenPrincipal(imagenPrincipal4);
		
		entityManager.persist(c4);
		
		List<Collection> colecciones = new ArrayList<>();
		colecciones.add(c4);
		colecciones.add(c3);
		colecciones.add(c2);
		colecciones.add(c);
		
		p.setColecciones(colecciones);
		p2.setColecciones(colecciones);
		
		entityManager.persist(p);
		entityManager.persist(p2);
	
		


	}
		

	@GetMapping({"/", "/index", "/home"})
	public String root(HttpServletRequest request,
			Model model, HttpSession session, Principal principal) {
		session.setAttribute("user", 
				entityManager.createQuery("from User where login = :login", User.class)
					.setParameter("login", principal.getName())
					.getSingleResult()
		);
		
		User usuario = (User)session.getAttribute("user");
		
		if(usuario.getRoles().contains("ADMIN")) {
			return "redirect:admin/";
		}
		else if(usuario.getRoles().contains("MODER")) {
			return "redirect:moder/";
		}
		log.info("welcoming back: " + principal.getName());
        log.info("Me gustaría encontrar el usuario: " + principal);
        log.info("El usaurio??? :" + session.getAttribute("user"));
		log.info(principal.getName() + " de tipo " + principal.getClass());		
		// org.springframework.security.core.userdetails.User
		/*model.addAttribute("users", entityManager
				.createQuery("select u from User u").getResultList()); */
		model.addAttribute("ps", entityManager
				.createQuery("select p from Product p").getResultList());
		/*model.addAttribute("photo", entityManager
				.createQuery("select t from Photos t").getResultList());*/
		return "home";
	}
	
	@GetMapping("/bd")
	@Transactional
	public String bd() {
		insertarProductosYColecciones();
		return "bd";
	}
	
	@GetMapping("/login")
	public String login(HttpServletRequest request,
			Model model, HttpSession session) {
		return "login";
	}
	
	@GetMapping("/messages")
	public String chat(Model model, HttpServletRequest request, Principal principal) {			
					
		model.addAttribute("sentMessages", 
				entityManager.createQuery("select m from Message where idSender =:login", User.class)
					.setParameter("login", principal.getName())
					.getResultList());
		
		model.addAttribute("receivedMessages", 
				entityManager.createQuery("select ms from Message where idAdresser =:login", User.class)
					.setParameter("login", principal.getName())
					.getResultList());
		
		return "chat";
		}	
	
	/*@GetMapping("/home")
	public String home(HttpServletRequest request,
			Model model, HttpSession session, Principal principal) {
        session.setAttribute("user", 
                entityManager.createQuery("from User where login = :login", User.class)
                    .setParameter("login", principal.getName())
                    .getSingleResult()
        );
        log.info("welcoming back: " + principal.getName());
        log.info("Me gustaría encontrar el usuario: " + principal);
        log.info("El usaurio??? :" + session.getAttribute("user"));
		return "home";
	}*/
	
	@GetMapping("/profile")
	public String profile(Model model, HttpSession session) {
		User u = (User)session.getAttribute("user");
		model.addAttribute("u", entityManager
				.createQuery("select u from User u where u.id =" + u.getId()).getResultList());
		
/*		model.addAttribute("user", entityManager.createQuery("from User where login = :login", User.class));*/
		return "profile";
	}
	
	@GetMapping("/profile/{id}")
	public String profileB(@PathVariable int id, Model model, HttpSession session) {
		model.addAttribute("usuario", entityManager
				.createQuery("select u from User u where u.id = " + id).getResultList());
		
		User usuario = (User)session.getAttribute("user");
		long idUsuario = usuario.getId();
		
		log.info(idUsuario + ", " + id);
		if(idUsuario == id) {
			log.info("Devuelvo profile");
			return "redirect:/profile/";
		}
		log.info("Devuelvo profileB");		
		return "profileB";
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "logout";
	}
	
	@GetMapping("/upload")
	public String upload() {
		return "upload";
	}
	
	@GetMapping("/search/{busqueda}")
	public String search(Model model, @PathVariable String busqueda ) {
		//String query1 = "select p from Product p where p.name like '%" + busqueda + "%'";
		//String query2 = "select p from Product p where p.descripcion like '%" + busqueda + "%'";
		//String query3 = "select u from User u where u.login = '" + busqueda + "'";
		//model.addAttribute("productsNombre", entityManager.
			//	createQuery(query1).getResultList());
	//	model.addAttribute("productsDesc", entityManager.
			//	createQuery(query2).getResultList());
		List<String> result = (List<String>)entityManager.
				createQuery("SELECT u.login FROM User u WHERE u.login"
						+ " LIKE CONCAT('%',:login,'%')")
				.setParameter("login", busqueda).getResultList();
		model.addAttribute("users", result);
		log.info("Result of query for " + busqueda + " is "+ String.join(", ", result));
		
		List<String> result2 = (List<String>)entityManager.
				createQuery("SELECT DISTINCT p.nombre FROM Product p WHERE p.nombre"
						+ " LIKE CONCAT('%',:prod,'%')")
				.setParameter("prod", busqueda).getResultList();
		model.addAttribute("productsNombre", result2);
		log.info("Result of query for " + busqueda + " is "+ String.join(", ", result2));
		
		/*List<String> result3 = (List<String>)entityManager.
				createQuery("SELECT p.nombre FROM Product p WHERE p.nombre"
						+ " LIKE CONCAT('%',:coll,'%')")
				.setParameter("coll", busqueda).getResultList();
		model.addAttribute("collections", result3);
		log.info("Result of query for " + busqueda + " is "+ String.join(", ", result3));*/
		
		model.addAttribute("s", "../static");
		
		return "search";
	}
	
	@GetMapping("/search")
	public String search() {		
		return "search";
	}
	
	@GetMapping("/collections")
	public String collections(Model model) {
		model.addAttribute("colecciones", entityManager
				.createQuery("select u from Collection u").getResultList());
		return "collections";
	}
	
	@GetMapping("/collection/{id}")
	public String collection(Model m, @PathVariable long id) {
		String query = "select p from Collection p where p.id = " + id;
		m.addAttribute("elementos", entityManager.createQuery(query).getResultList());
		File[] lista = localData.getFolder("collection/" + id).listFiles();
		List<String> fotos = new ArrayList<>();
		for(int i = 0; i < lista.length; i++) {
			int pini = lista[i].getPath().indexOf("collection");
			int barrita = pini -1;
			int pfin = lista[i].getPath().length();
			String barra = lista[i].getPath().substring(pini-1, pini);
			pini = pini +7;
			String rutaNueva = lista[i].getPath().substring(pini, pfin);
			rutaNueva = rutaNueva.replace(barra, "/");
			fotos.add(rutaNueva);
		}
		m.addAttribute("fotos", fotos);
		return "collection";
	}
	
	@GetMapping("/nuevaColeccion")
	public String nuevaColecion() {
		return "nuevaColeccion";
	}

	/*Añadir coleccion*/
	@RequestMapping(value="addCollection", method=RequestMethod.POST)
	@Transactional
	public String handleFileUpload(
			@RequestParam("photo") MultipartFile photo,
			@RequestParam("nombre") String nombre,
    		@RequestParam("descripcion") String descripcion,
    		@RequestParam("usuario") String usuario,
    		HttpSession session,
    		Model m){
		
		User u = (User)session.getAttribute("user");
		
		User b = entityManager.getReference(User.class, u.getId());
		
		Collection c = new Collection();
		
		c.setDescripcion(descripcion);
		c.setNombre(nombre);
		c.setPropietario((User)session.getAttribute("user"));
		entityManager.persist(c);
		entityManager.flush();
		
		if(!photo.isEmpty()) {
			try {
				byte[] bytes = photo.getBytes();
				
				long hash = calculaHash(bytes);
				BufferedOutputStream stream = 
						new BufferedOutputStream(
								new FileOutputStream(
										localData.getFile("collection/" + c.getId(), "/"+hash)));
				stream.write(bytes);
				stream.close();
				
				PhotoCollection f = new PhotoCollection();
				
				f.setIdExterno(c);
				String ruta = "photo/"+ c.getId() + "/" + hash;	
				
				f.setUrl(ruta);
				entityManager.persist(f);
				c.setImagenPrincipal(f);
			}
			catch (Exception e) {}
		}
		
		entityManager.persist(c);
		
		List<Collection> lista = new ArrayList<>();
		lista = b.getOwnedCollections();
		lista.add(c);
		
		b.setOwnedCollections(lista);
		
		entityManager.persist(b);
		
		entityManager.flush();
		m.addAttribute("ps", entityManager
				.createQuery("select c from Collection c").getResultList());
		
		return "profile";
	}
	
	/**
	 * Returns a users' photo
	 * @param id of user to get photo from
	 * @return
	 */
	@RequestMapping(value="/collections/photo/{id}/{nombre}", method = RequestMethod.GET, produces = MediaType.IMAGE_JPEG_VALUE)
	public void collectionPhoto(@PathVariable("id") String id, 
			@PathVariable("nombre") String nombre,
			HttpServletResponse response) {
	    File f = localData.getFile("collection/" + id + "/", nombre);
	    InputStream in = null;
	    try {
		    if (f.exists()) {
		    	in = new BufferedInputStream(new FileInputStream(f));
		    } else {
		    	in = new BufferedInputStream(
		    			this.getClass().getClassLoader().getResourceAsStream("interrogacion.png"));
		    }
	    	FileCopyUtils.copy(in, response.getOutputStream());
	    } catch (IOException ioe) {
	    	log.info("Error retrieving file: " + f + " -- " + ioe.getMessage());
	    }
	}
	
	@GetMapping("/user/{id}")
	public String user(Model m, @PathVariable long id, HttpSession session) {
		String query = "select u from User u where u.id = " + id;
		m.addAttribute("usuario", entityManager.createQuery(query).getResultList());
		return "profileB";
		
	}
	@GetMapping("/product/{id}")
	public String product(Model m, @PathVariable long id) {
		String query = "select p from Product p where p.id = " + id;
		m.addAttribute("elementos", entityManager.createQuery(query).getResultList());
		File[] lista = localData.getFolder("product/" + id).listFiles();
		List<String> fotos = new ArrayList<>();
		for(int i = 0; i < lista.length; i++) {
			int pini = lista[i].getPath().indexOf("product");
			int barrita = pini -1;
			int pfin = lista[i].getPath().length();
			String barra = lista[i].getPath().substring(pini-1, pini);
			pini = pini +7;
			String rutaNueva = lista[i].getPath().substring(pini, pfin);
			rutaNueva = rutaNueva.replace(barra, "/");
			fotos.add(rutaNueva);
		}
		m.addAttribute("fotos", fotos);

		//Para poder obtener los comentarios de un producto
		
		
		
		String qu = "select cp from CommentProduct cp where cp.id =" + id;
		
		List<String> result = (List<String>)entityManager.createQuery(qu).getResultList();
		m.addAttribute("comentarios", result);
		
		/*String qu ="select c from CommentProduct cp where cp.idProduct =" + id;
		m.addAttribute("comentarios", entityManager.createQuery(qu).getResultList());
		
		String q ="select v.estrellitas from Valoration v where v.IdProduct =" + id;
		m.addAttribute("estrellitas", entityManager.createQuery(q).getResultList());*/
		

		return "product";
	}
	
	@GetMapping("/nuevoProducto")
	public String nuevoProducto() {
		return "nuevoProducto";
	}
	
	///EJEMPLO NO TENER EN CUENTA
	@GetMapping("/EjemploCarrousel")
	public String EjemploCarrousel() {
		return "EjemploCarrousel";
	}
	
	private int calculaHash(byte[] fichero) {
		return new Random().nextInt(100000);
	}
	
	
	/*Muestra la foto de perfil*/
	/**
	 * Returns a users' photo
	 * @param id of user to get photo from
	 * @return
	 */
	@RequestMapping(value="user/{id}/{nombre}", method = RequestMethod.GET, produces = MediaType.IMAGE_JPEG_VALUE)
	public void usuarioPhoto(@PathVariable("id") String id, 
			@PathVariable("nombre") String nombre,
			HttpServletResponse response) {
	    File f = localData.getFile("user/" + id + "/", nombre);
	    InputStream in = null;
	    try {
		    if (f.exists()) {
		    	in = new BufferedInputStream(new FileInputStream(f));
		    } else {
		    	in = new BufferedInputStream(
		    			this.getClass().getClassLoader().getResourceAsStream("interrogacion.png"));
		    }
	    	FileCopyUtils.copy(in, response.getOutputStream());
	    } catch (IOException ioe) {
	    	log.info("Error retrieving file: " + f + " -- " + ioe.getMessage());
	    }
	}

	
	/*ENVIAR MENSAJE*/
	
	@RequestMapping(value="sendMessage", method=RequestMethod.POST)
	@Transactional
	public String handleFileUpload(
			@RequestParam("destinatario") String destinatario,
			@RequestParam("mensaje") String mensaje,
    		Model m){
		
		Message ms = new Message();
		User u = entityManager.getReference(User.class, destinatario);
		ms.setIdAddressee(u.getId());
		ms.setmessage(mensaje);
		entityManager.persist(ms);
		entityManager.flush();
		
		return "message";
	}

	
	/*AÑADIR FOTO DE PERFIL*/ 
	
	@RequestMapping(value="addProfile", method=RequestMethod.POST)
	@Transactional
	public String handleFileUpload(
			@RequestParam("photo") MultipartFile photo,
			@RequestParam("nombre") String nombre,
    		Model m, HttpSession session){
	
	User u = (User)session.getAttribute("user");
	
	User b = entityManager.getReference(User.class, u.getId());
		
	log.info("welcoming back: " + b);
	
			
		if(!photo.isEmpty()) {
			try {
				byte[] bytes = photo.getBytes();
				
				long hash = calculaHash(bytes);
				BufferedOutputStream stream = 
						new BufferedOutputStream(
								new FileOutputStream(
										localData.getFile("user/" + b.getId(), "/"+hash)));
				stream.write(bytes);
				stream.close();
				
				Photo f = new Photo();
				
		
				String ruta = "user/"+ b.getId() + "/" + hash;	
				
				f.setUrl(ruta);
				entityManager.persist(f);
				b.setFotoPerfil(f);
			}
			catch (Exception e) {}
		}
		
		entityManager.persist(b);
		
		entityManager.flush();
		m.addAttribute("u", entityManager
				.createQuery("select u from User u where u.id =" + u.getId()).getResultList());
		
		return "profile";
	}

	/*AÑADIR UN PRODUCTO A UNA COLECCION*/ 
	
	@RequestMapping(value="productoColeccion", method=RequestMethod.POST)
	@Transactional
	public String handleFileUpload(
			@RequestParam("coleccion") String idColeccion,
			@RequestParam("producto") String idProducto,
    		Model m, HttpSession session){
	
	long coleccion = new Long(Long.parseLong(idColeccion));
	long producto = new Long(Long.parseLong(idProducto));
	
		
	Product p = entityManager.getReference(Product.class, producto);
	Collection c = entityManager.getReference(Collection.class, coleccion);
	
	List<Collection> listaColecciones = new ArrayList<>();
	listaColecciones = p.getColecciones();
	
	List<Product> listaProductos = new ArrayList<>();
	listaProductos = c.getProductos();
	
	if(!listaColecciones.contains(c)) {
		listaColecciones.add(c);
	}
	if(!listaProductos.contains(p)) {
		listaProductos.add(p);
	}
	
	
	entityManager.persist(c);
	entityManager.persist(p);
	
	entityManager.flush();
			
		return "redirect:/collection/" + coleccion;
	}
	
	/*AÑADIR UN NUEVO COMENTARIO A LA BASE DE DATOS*/
		
	@RequestMapping(value="addComment", method=RequestMethod.POST)
	@Transactional
	public void handleFileUpload(
			@RequestParam("Comment")String comentario,
			@RequestParam("Destinatario")String dest,
			HttpSession session) {
	
		CommentProduct cp = new CommentProduct();
		
		User u = (User)session.getAttribute("user");
		
		String query = "select u.id from User u where u.login = " + dest;
		
		long destinatario = new Long(Long.parseLong(query));		
		
		cp.setIdAddressee(destinatario);
		cp.setIdSender(u);
		cp.setComment(comentario);
		
		entityManager.persist(cp);
		entityManager.flush();				
	}
	/*AÑADIR UN NUEVO COMENTARIO A LA BASE DE DATOS*/
	
	
	/*AÑADIR VALORACIÓN A UN PRODUCTO*
	@RequestMapping(value="addEvaluation", method=RequestMethod.POST)
	@Transactional
	public @ResponseBody String handleFileUpload(
			@RequestParam("Estrellas")int valoracion,
			@RequestParam("id")long id,			
			Model m) {
		int valora;
		float punt;
		
		Product p = (Product)entityManager.createQuery("select * from Product p where p.id = " + id);				
		
		if((valoracion >=0 && valoracion <=5)) {
			punt = p.getEstrellas();
			valora = p.getNumValoraciones();
			valora +=1;
			float result = (punt + valoracion)/valora ;
			p.setEstrellas(result);			
			return "Valoración subida";
		}		
		return "Valoración no subida";
	} */
	
	
	/*AÑADIR VALORACIÓN A UN Usuario*/
	@RequestMapping(value="profile/addValoracionUsuario", method=RequestMethod.POST)
	@Transactional
	public /*@ResponseBody*/ String valoracionUsuario(
			@RequestParam("estrellas") int estrellas,
			@RequestParam("id") long id,
    		HttpSession session,
    		Model m){
		
		User b = entityManager.getReference(User.class, id);
		
		int votosAntiguos = b.getVotos();
		int sumaAntigua = b.getSuma();
		
		int sumaNueva = sumaAntigua + estrellas;
		int votosNuevos = votosAntiguos + 1;
		
		int estrellasNuevas = sumaNueva/votosNuevos;
		
		b.setVotos(votosNuevos);
		b.setEstrellas(estrellasNuevas);
		b.setSuma(sumaNueva);
		
		log.info("Votos: " + b.getVotos() + "\n Estrellas: " + b.getEstrellas() + "\n Suma: " + b.getSuma());
		entityManager.persist(b);
		entityManager.flush();
				
		return "redirect:/profile/" + id;
	}

	/*AÑADIR VALORACIÓN A UN PRODUCTO*/	

	
	/*Muestra la foto de un producto*/ 

	/**
	 * Returns a users' photo
	 * @param id of user to get photo from
	 * @return
	 */
	@RequestMapping(value="photo/{id}/{nombre}", method = RequestMethod.GET, produces = MediaType.IMAGE_JPEG_VALUE)
	public void userPhoto(@PathVariable("id") String id, 
			@PathVariable("nombre") String nombre,
			HttpServletResponse response) {
	    File f = localData.getFile("product/" + id + "/", nombre);
	    InputStream in = null;
	    try {
		    if (f.exists()) {
		    	in = new BufferedInputStream(new FileInputStream(f));
		    } else {
		    	in = new BufferedInputStream(
		    			this.getClass().getClassLoader().getResourceAsStream("interrogacion.png"));
		    }
	    	FileCopyUtils.copy(in, response.getOutputStream());
	    } catch (IOException ioe) {
	    	log.info("Error retrieving file: " + f + " -- " + ioe.getMessage());
	    }
	}

	//AddProduct (inserta un nuevo producto)
	@RequestMapping(value="addProduct", method=RequestMethod.POST)
	@Transactional
	public String handleFileUpload(
			@RequestParam("photo") MultipartFile photo,
			@RequestParam("imagnes") MultipartFile[] fotos,
			@RequestParam("nombre") String nombre,
    		@RequestParam("cantidadProducto") int cantidad,
    		@RequestParam("descripcion") String descripcion,
    		Model m, HttpSession session){
		log.info("he entrado en el metodo");
		log.info("" + fotos);
		
		User u = (User)session.getAttribute("user");
		
		User b = entityManager.getReference(User.class, u.getId());
		
		log.info("Usuario b: " + b.getId());
		
		Product p = new Product();
		p.setCantidad(cantidad);
		p.setDescripcion(descripcion);
		p.setNombre(nombre);
		p.setPropietario(b);
		entityManager.persist(p);
		entityManager.flush();
		
		if(!photo.isEmpty()) {
			try {
				byte[] bytes = photo.getBytes();
				
				long hash = calculaHash(bytes);
				BufferedOutputStream stream = 
						new BufferedOutputStream(
								new FileOutputStream(
										localData.getFile("product/" + p.getId(), "/"+hash)));
				stream.write(bytes);
				stream.close();
				
				Photo f = new Photo();
				
				f.setIdExterno(p);
				String ruta = "photo/"+ p.getId() + "/" + hash;	
				
				f.setUrl(ruta);
				entityManager.persist(f);
				p.setImagenPrincipal(f);
			}
			catch (Exception e) {}
		}
		
		List<Photo> listaFotos = new ArrayList<>();
		
		if(fotos.length > 0) {
			for(int i = 0; i< fotos.length; i++) {
				try {
					byte[] bytes = fotos[i].getBytes();
					
					long hash2 = calculaHash(bytes);
					BufferedOutputStream stream = 
							new BufferedOutputStream(
									new FileOutputStream(
											localData.getFile("product/" + p.getId(), "/"+hash2)));
					stream.write(bytes);
					stream.close();
					
					Photo t = new Photo();
					
					t.setIdExterno(p);
					String ruta = "photo/" + p.getId() + "/" + hash2;
					
					t.setUrl(ruta);
					entityManager.persist(t);
					
					listaFotos.add(t);
				}
				catch(Exception e) {}
			}
		}
		if(!listaFotos.isEmpty()) {
			p.setFotos(listaFotos);
		}
		
		List<Product> lista = new ArrayList<>();
		lista = b.getOwnedProducts();
		lista.add(p);
		
		b.setOwnedProducts(lista);
		
		entityManager.persist(b);
		entityManager.persist(p);
		
		entityManager.flush();
		m.addAttribute("ps", entityManager
				.createQuery("select p from Product p").getResultList());
		
		return "redirect:/product/" + p.getId();
	}
}
