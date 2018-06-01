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
public class Valoration {
	private long IdProducto;
	private int estrellas; //valor comprendido entre 0 y 5
	
	
	//idPropietario??
	
	@OneToOne(targetEntity=Product.class)
	public long getId() {
		return IdProducto;
	}	
	public void setId(long id) {
		this.IdProducto = id;
	}		
	public int getEstrellitas() {
		return estrellas;
	}	
	public void setEstrellitas(int valor) {
		this.estrellas = valor;
	}
	
}
