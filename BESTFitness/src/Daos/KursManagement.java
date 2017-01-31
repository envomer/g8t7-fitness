package Daos;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

import modells.Kurs;
import modells.user;
import raum.Raum;

public class KursManagement implements KursDao{

	private String pfad;
    private ArrayList<Kurs> kurse;
    /**
	 * @param pfad Datei wo die Objekte gespeichert werden soll
	 */
    public KursManagement(String pfad) {
    	this.pfad = pfad;
        this.kurse = new ArrayList<Kurs>();

        File file = new File(this.pfad);

        if (file.exists()) {
        	dbLaden();
        } else {
        	try {
				file.createNewFile();
				saveKurse();
			} catch (IOException e) {
				e.printStackTrace();
			}
        }
    }
    
    
    /**
     * Gibt Kursliste wider
     */
	@Override
	public ArrayList<Kurs> getKursList() {
		return this.kurse;
	}

	/**
	 * Liefert KursId wieder
	 */
	@Override
	public Kurs getKursById(int id) {
		for (Kurs k : this.kurse) {
            if (id == k.getKursID()) {
                return k;
            }
        }
		
        return null;
	}

	/**
	 * Fuegt einen Kurs hinzu und speichert
	 */
	@Override
	public void speicherKurs(Kurs k) {
		this.kurse.add(k);
        this.saveKurse();
	}

	/**
	 * Schaut in der for-schleife wo sich der kuurs mit selben id befindet und loescht es in den if-statment 
	 */
	@Override
	public void loescheKurs(Kurs k) {
		for (Kurs r : this.kurse) {
            if (k.getKursID() == r.getKursID()) {
                this.kurse.remove(r);
                this.saveKurse();
                break;
            }
        }
	}

	/**
	 * Um Kurs zu veraendern wird hier der Kurs erst gelöscht und dann wieder gespeichert 
	 */
	@Override
	public void aenderKurs(Kurs k) {
		this.loescheKurs(k);
		this.speicherKurs(k);
	}
	
	/**
	 * Hier wird die Liste aller Kurse gespeichert
	 */
	public void saveKurse() {
        try {
            FileOutputStream fos = new FileOutputStream(this.pfad);
            ObjectOutputStream oos = new ObjectOutputStream(fos);
            oos.writeObject(this.kurse);
            oos.close();
            fos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
	
	/**
	 * Hier wird die Liste aller Kurse von der Datenbank geladen
	 */
	@SuppressWarnings("unchecked")
	public void dbLaden() {

		try {
			FileInputStream fis = new FileInputStream(pfad);
			ObjectInputStream ois = new ObjectInputStream(fis);
			kurse = (ArrayList<Kurs>) ois.readObject();
			ois.close();
			fis.close();
		} catch (IOException | ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
}
