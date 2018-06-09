package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class CommentProduct {
	private long idComment;
	private Product idProduct;
	private User idSender;
	private User idAddressee;	//Nombre del destinatario
	private String comment;
	
	
	@Id
	@GeneratedValue
	public long getId() {
	return idComment;
	}
	
	public void setId(long idComment) {
		this.idComment = idComment;
	}	
	
	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	@ManyToOne(targetEntity=Product.class)
	public Product getIdProduct() {
		return idProduct;
	}

	public void setIdProduct(Product idProduct) {
		this.idProduct = idProduct;
	}
	
	@ManyToOne(targetEntity=User.class)
	public User getIdSender() {
		return idSender;
	}

	public void setIdSender(User idSender) {
		this.idSender = idSender;
	}
	
	@ManyToOne(targetEntity=User.class)
	public User getIdAddressee() {
		return idAddressee;
	}

	public void setIdAddressee(User idAddressee) {
		this.idAddressee = idAddressee;
	}
	
}
