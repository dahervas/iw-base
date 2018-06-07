package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Message {
	private long idMessage;
	private long idSender;   //Id del usuario que envía el mensaje
	private long idAddressee;	//id del usuario que recibe el mensaje
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
	public long getIdSender() {
		return idSender;
	}

	public void setIdSender(long idSender) {
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
