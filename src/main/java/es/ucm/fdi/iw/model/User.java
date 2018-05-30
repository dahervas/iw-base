package es.ucm.fdi.iw.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class User {
	private long id;
	private String login;
	private String password;
	private String roles; // split by , to separate roles
	private Photo fotoPerfil;
	//private int puntuacion;
	private byte enabled;
	private List<Product> ownedProducts;
	private List<Collection> ownedCollections;
	
	@Id
	@GeneratedValue
	public long getId() {
	return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}	

	@Column(unique=true)
	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	@OneToOne(targetEntity=Photo.class)
	public Photo getFotoPerfil() {
		return fotoPerfil;
	}
	
	public void setFotoPerfil(Photo fotoperfil) {
		this.fotoPerfil = fotoperfil;
	}
	

	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	

	public String getRoles() {
		return roles;
	}

	public void setRoles(String roles) {
		this.roles = roles;
	}

	public byte getEnabled() {
		return enabled;
	}

	public void setEnabled(byte enabled) {
		this.enabled = enabled;
	}

	@OneToMany(targetEntity=Product.class)
	@JoinColumn(name="owner_id")
	public List<Product> getOwnedProducts() {
		return ownedProducts;
	}

	public void setOwnedProducts(List<Product> ownedProducts) {
		this.ownedProducts = ownedProducts;
	}

	@OneToMany(targetEntity=Collection.class)
	public List<Collection> getOwnedCollections() {
		return ownedCollections;
	}

	public void setOwnedCollections(List<Collection> ownedCollections) {
		this.ownedCollections = ownedCollections;
	}

	/*public int getPuntuacion() {
		return puntuacion;
	}

	public void setPuntuacion(int puntuacion) {
		this.puntuacion = puntuacion;
	}*/

}
