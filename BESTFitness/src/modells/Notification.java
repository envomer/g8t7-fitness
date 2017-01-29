package modells;

import java.io.Serializable;

public class Notification implements Serializable {

	private static final long serialVersionUID = 1L;
	private String user;
	private String message;
	
	public Notification(String teilnehmer, String string) {
		this.user = teilnehmer;	
		this.message = string;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
