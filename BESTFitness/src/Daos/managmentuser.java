package Daos;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;

import modells.user;

public class managmentuser implements userdao, Serializable {

	/**
	 *hier in der SerializedFahrzeugDao habe ich ein Liste Array erstellt und in dieser Liste als Objeckte PKW oder LKW gespeichert
	 *in der Liste geloscht und komplette Array liste habe ich in die File geschrieben
	 */
	private static final long serialVersionUID = 1L;
	/* ---------------------------------- */
	private ArrayList<user> userListe;
	private String FileName;
 /**
  * 
  * @param fileName durch parameter fileName wurde datei ubergeben
  * dosya in file type wurde erzeugt oder falls es schon existiert dann geladen
  * wegen mogliche fehler exeption gefangen
  * 
  */
	public managmentuser(String fileName) {
		FileName = fileName;
		userListe = new ArrayList<user>(); // obje olustu

		File dosya = new File(FileName); // program icin bir dosya olustu ismi
											// filename ile gelen parameter

		if (dosya.exists()) {
			dbLaden();
		} else {
			try {
				dosya.createNewFile(); // hdd schreib geschutz yada baska bir
										// neden olabilir olusmaya bilir hata
										// ayiklama gerek
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	/**
	 * @param getFahrzeugList hier wurde arrayliste returniert
	 * 
	 */
	@Override
	public ArrayList<user> getuserList() {
		// TODO Auto-generated method stub
		return userListe;
	}
/**
 * @return getFahrzeugbyId  paramater  int id wurde
 *  in der liste durch dummy iterasyon einzeln kontrolliert und als Fahrzeug objectk retourniert
 */
	@Override
	public user getuserbyId(int id) {

		/*
		 * for(int i=0;i<FahrzeugListe.size();i++){
		 * 
		 * if (FahrzeugListe.get(i).getId()==id) return FahrzeugListe.get(i);
		 * 
		 * }
		 */

		for (user f : userListe) { // f Dummy gecici bir object bu her
											// iterasyonda siradaki fahrzeugu
											// icine kayit eder
			if (f.getBenutzerid() == id)
				return f;
		}

		return null;
	}
/**
 * @return in der speichereFahrzeug()
 *  habe ich dummy verwendet und als object in der Fahrzeugliste  durch ID verleicht 
 * falls gleiche gibt exception gibt und lasst nicht speichern
 * wenn gleiche id nicht existiert dann zuerst addiert in der Array liste und ruft nach dbSpeichern() wo man komplette Arraylist speichert
 */
	@Override
	public boolean speichereuser(user fr) {
		boolean bool = false;
		for (int a = 0;a < userListe.size(); a++ )
			if (userListe.get(a).getBenutzerid() == fr.getBenutzerid())
				throw new IllegalArgumentException("Dieser ID existiert schon ");

		userListe.add(fr);// zuerst in array list speichern dann komplett in
								// datei schreiben
		dbSpeichern();
		bool = true;
      return bool;
	}
/**
 *  @return in der loescheFahrzeug() habe ich dummy verwendet und als object in der Fahrzeugliste  durch getId() verleicht 
 *  wenn gefunden habe ich bool variable gefunden treu wenn nicht false gesetz 
 *  spater falls true ist geloscht und wieder dbSpeichern aufgerufen
 *  falls false ist dann exception wirft und sagt dieser ID existiert nicht
 */
	@Override
	public void loescheuser(user fr) {
		boolean gefunden = false;

		for (user f : userListe)
			if (f.getBenutzerid()== fr.getBenutzerid())
				gefunden = true;

		if (gefunden == true) {
			userListe.remove(fr);
			dbSpeichern();
		} else
			throw new IllegalArgumentException("Dieser ID nicht existiert");
	}
/**
 * @return dbSpeichern dieser metode habe ich fur speichern geschrieben somit uberal rufe ich nur mit einer zeile
 * in der methode FileOutputStream ObjectOutputStream verwendet und inder File als object geschrieben
 */
	public void dbSpeichern() {

		try {
			FileOutputStream fos = new FileOutputStream(FileName); // 3
			ObjectOutputStream oos = new ObjectOutputStream(fos); // 2
			oos.writeObject(userListe); // 1
			oos.close();
			fos.close();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked") // FAhrzeug listede donen obje hatasini
									// unterdrucken yaptik bu hatayi gormek
									// istemiyorum
	/**
	 * @return dbLaden() dieser metode habe ich fur laden aller objeckte geschrieben somit uberal rufe ich nur mit einer zeile
	 *  hier habe ich ObjectInputStream verwendet und die Daten als Objekt win die Arraylist geschrieben
	 * 
	 */
	public void dbLaden() {

		try {
			FileInputStream fis = new FileInputStream(FileName);
			ObjectInputStream ois = new ObjectInputStream(fis);
			userListe = (ArrayList<user>) ois.readObject();// okunacak verinin geri donus tipi fahrzeugListe ile ayni olacak
			ois.close();
			fis.close();
		} catch (IOException | ClassNotFoundException e) {

			e.printStackTrace();
		}

	}
}
