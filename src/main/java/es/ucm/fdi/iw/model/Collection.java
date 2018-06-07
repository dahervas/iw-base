package es.ucm.fdi.iw.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Collection {
	private long id;
	private User propietario;
	private String nombre;
	private String descripcion;
	private PhotoCollection imagenPrincipal;
	private List<Product> productos;
	private boolean revisado;
	
	//idPropietario??
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}	

	@ManyToOne(targetEntity=User.class)
	public User getPropietario() {
		return propietario;
	}
	
	public void setPropietario(User u) {
		this.propietario = u;
	}
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}
	
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@OneToOne(targetEntity=PhotoCollection.class)
	public PhotoCollection getImagenPrincipal() {
		return imagenPrincipal;
	}
	
	public void setImagenPrincipal(PhotoCollection imagenPrincipal) {
		this.imagenPrincipal = imagenPrincipal;
	}
	
	@ManyToMany(targetEntity=Product.class)
	public List<Product> getProductos() {
		return productos;
	}

	public void setProductos(List<Product> productos) {
		this.productos = productos;
	}

	public boolean isRevisado() {
		return revisado;
	}

	public void setRevisado(boolean revisado) {
		this.revisado = revisado;
	}
}
