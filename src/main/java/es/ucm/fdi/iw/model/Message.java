package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Message {
	private long idMessage;
	private User sender;   //Id del usuario que envía el mensaje
	private User addressee;	//id del usuario que recibe el mensaje
	private String message;
	
	
	@Id
	@GeneratedValue
	public long getId() {
	return idMessage;
	}
	
	public void setId(long idmessage) {
		this.idMessage = idmessage;
	}	
	
	public String getMessage() {
		return message;
	}

	public void setmessage(String message) {
		this.message = message;
	}
	
	
	@ManyToOne(targetEntity=User.class)
	public User getIdSender() {
		return sender;
	}

	public void setIdSender(User idSender) {
		this.sender = idSender;
	}
	
	@ManyToOne(targetEntity=User.class)
	public User getIdAddressee() {
		return addressee;
	}

	public void setIdAddressee(User idAddressee) {
		this.addressee = idAddressee;
	}
	
}
