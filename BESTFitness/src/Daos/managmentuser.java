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

	
	private static final long serialVersionUID = 1L;
	/* ---------------------------------- */
	public ArrayList<user> userListe;
	private String FileName;

	public managmentuser(String fileName) {
		FileName = fileName;
		userListe = new ArrayList<user>(); 

		File dosya = new File(FileName); 

		if (dosya.exists()) {
			dbLaden();
		} else {
			try {
				dosya.createNewFile();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}

	}


	@Override
	public ArrayList<user> getuserList() {
		// TODO Auto-generated method stub
		return userListe;
	}

	@Override
	public user getuserbyId(int id) {

	

		for (user f : userListe) {
			
			if (f.getBenutzerid() == id)
				return f;
		}

		return null;
	}

	@Override
	public boolean speichereuser(user fr) {
		boolean bool = false;
		for (int a = 0;a < userListe.size(); a++ )
			if (userListe.get(a).getBenutzerid() == fr.getBenutzerid())
				throw new IllegalArgumentException("Dieser ID existiert schon ");

		userListe.add(fr);
		
		dbSpeichern();
		bool = true;
      return bool;
	}

	
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

	@SuppressWarnings("unchecked") 
	public void dbLaden() {

		try {
			FileInputStream fis = new FileInputStream(FileName);
			ObjectInputStream ois = new ObjectInputStream(fis);
			userListe = (ArrayList<user>) ois.readObject();
			ois.close();
			fis.close();
		} catch (IOException | ClassNotFoundException e) {

			e.printStackTrace();
		}

	}
}
