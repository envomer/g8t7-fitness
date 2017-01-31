package modells;

import java.io.Serializable;

public class user implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String benutzertyp;
	private String benutzerid;
	private String benutzernachname;
	private String benutzervorname;
	private String addresse;
	private String pass;


	/**
	 * Benutzer Objekte wertden mit Werten erstellt
	 * @param benutzertyp
	 * @param benutzerid
	 * @param benutzernachname
	 * @param benutzervorname
	 * @param addresse
	 * @param pass
	 */
	public user(String benutzertyp, String benutzerid, String benutzernachname, String benutzervorname, String addresse, String pass) {
		this.benutzertyp = benutzertyp;
		this.benutzerid=benutzerid;
		this.benutzernachname = benutzernachname;
		this.benutzervorname=benutzervorname;
		this.addresse = addresse;
		this.pass=pass;
		
	}


	/**
	 * getBenutzertypeClean
	 * @return
	 */
	public String getBenutzertypeClean() {
        return this.benutzertyp.replace(".jsp", "");
    }
	
	/**
	 * getBenutzertyp
	 * @return
	 */
	public String getBenutzertyp() {
		return this.benutzertyp;
	}

	/**
	 * setBenutzertyp
	 * @param benutzertyp
	 */
	public void setBenutzertyp(String benutzertyp) {
		 this.benutzertyp = benutzertyp;
	}

	/**
	 * getBenutzerid
	 * @return
	 */
	public String getBenutzerid() {
		return benutzerid;
	}

	/**
	 * setBenutzerid
	 * @param benutzerid
	 */
	public void setBenutzerid(String benutzerid) {
		this.benutzerid = benutzerid;
	}

	/**
	 * getBenutzernachname
	 * @return
	 */
	public String getBenutzernachname() {
		return benutzernachname;
	}

	/**
	 * setBenutzernachname
	 * @param benutzernachname
	 */
	public void setBenutzernachname(String benutzernachname) {
		this.benutzernachname = benutzernachname;
	}

	/**
	 * getBenutzervorname
	 * @return
	 */
	public String getBenutzervorname() {
		return benutzervorname;
	}

	/**
	 * setBenutzervorname
	 * @param benutzervorname
	 */
	public void setBenutzervorname(String benutzervorname) {
		this.benutzervorname = benutzervorname;
	}

	/**
	 * getAddresse
	 * @return
	 */
	public String getAddresse() {
		return addresse;
	}

	/**
	 * setAddresse
	 * @param addresse
	 */
	public void setAddresse(String addresse) {
		this.addresse = addresse;
	}

	/**
	 * getPass
	 * @return
	 */
	public String getPass() {
		return pass;
	}

	/**
	 * setPass
	 * @param pass
	 */
	public void setPass(String pass) {
		this.pass = pass;
	}

	/**
	 * getName
	 * @return
	 */
	public String getName() {
        return this.benutzervorname + " " + this.benutzernachname;
    }
       
}
