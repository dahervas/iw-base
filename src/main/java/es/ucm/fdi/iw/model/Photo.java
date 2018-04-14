package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Photo {
	private long id;
	private Product idExterno;
	private String url;
	
	
	@Id
	@GeneratedValue
	public long getId() {
	return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}	
	
	@ManyToOne(targetEntity=Product.class)
	public Product getIdExterno() {
		return idExterno;
	}

	public void setIdExterno(Product idExterno) {
		this.idExterno = idExterno;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}
