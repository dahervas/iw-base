package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Product {
	private long id;
	private User propietario;
	private String nombre;
	private String descripcion;
	private byte prestado; //0 no prestado, 1 si prestado
	private int estrellitas; //del 0 al 5
	private int cantidad;
	private Photo imagenPrincipal;
	
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

	public byte getPrestado() {
		return prestado;
	}

	public void setPrestado(byte prestado) {
		this.prestado = prestado;
	}
	
	public int getEstrellitas() {
		return estrellitas;
	}
	
	public void setEstrellitas(int estrellitas) {
		this.estrellitas = estrellitas;
	}
	
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	@OneToOne(targetEntity=Photo.class)
	public Photo getImagenPrincipal() {
		return imagenPrincipal;
	}
	
	public void setImagenPrincipal(Photo imagenPrincipal) {
		this.imagenPrincipal = imagenPrincipal;
	}
}
