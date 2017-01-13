package modells;

import java.io.Serializable;

public class user implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String benutzertyp;
	private int benutzerid;
	private String benutzernachname;
	private String benutzervorname;
	private String addresse;
	private String pass;


	public user(String benutzertyp, int benutzerid, String benutzernachname, String benutzervorname, String addresse, String pass) {
		
		this.benutzertyp = benutzertyp;
		this.benutzerid=benutzerid;
		this.benutzernachname = benutzernachname;
		this.benutzervorname=benutzervorname;
		this.addresse = addresse;
		this.pass=pass;
		
	}



	public String getBenutzertypeClean() {
        return this.benutzertyp.replace(".jsp", "");
    }
	public String getBenutzertyp() {
		return this.benutzertyp;
	}

	public void setBenutzertyp(String benutzertyp) {
		 this.benutzertyp = benutzertyp;
	}



	public Integer getBenutzerid() {
		return benutzerid;
	}



	public void setBenutzerid(int benutzerid) {
		this.benutzerid = benutzerid;
	}



	public String getBenutzernachname() {
		return benutzernachname;
	}



	public void setBenutzernachname(String benutzernachname) {
		this.benutzernachname = benutzernachname;
	}



	public String getBenutzervorname() {
		return benutzervorname;
	}



	public void setBenutzervorname(String benutzervorname) {
		this.benutzervorname = benutzervorname;
	}



	public String getAddresse() {
		return addresse;
	}



	public void setAddresse(String addresse) {
		this.addresse = addresse;
	}



	public String getPass() {
		return pass;
	}



	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
        return this.benutzervorname + " " + this.benutzernachname;
    }


       
}
