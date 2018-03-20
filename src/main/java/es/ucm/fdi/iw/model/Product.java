package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Product {
	private long id;
	private long idPropietario;
	private String nombre;
	private String descripcion;
	private byte prestado; //0 no prestado, 1 si prestado
	private int estrellitas; //del 0 al 5
	private int cantidad;
	
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
	public long getPropietario() {
		return idPropietario;
	}
	
	public void setPropietario(long id) {
		this.idPropietario = id;
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
}
