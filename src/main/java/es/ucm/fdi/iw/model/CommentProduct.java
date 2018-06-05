package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class CommentProduct {
	private long idComment;
	private long idProduct;
	private User idSender;
	private long idAddressee;	//Nombre del destinatario
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
	public long getIdProduct() {
		return idProduct;
	}

	public void setIdProduct(long idProduct) {
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
	public long getIdAddressee() {
		return idAddressee;
	}

	public void setIdAddressee(long idAddressee) {
		this.idAddressee = idAddressee;
	}
	
}
