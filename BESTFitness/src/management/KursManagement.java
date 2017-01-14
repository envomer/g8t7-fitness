package management;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

import dao.KursDao;
import modells.Kurs;
import modells.User;
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
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
    }
    
	@Override
	public ArrayList<Kurs> getKursList() {
		return this.kurse;
	}

	@Override
	public Kurs getKursById(int id) {
		for (Kurs k : this.kurse) {
            if (id == k.getKursID()) {
                return k;
            }
        }
		
        return null;
	}

	@Override
	public void speicherKurs(Kurs k) {
		this.kurse.add(k);
        this.saveKurse();
	}

	@Override
	public void loescheKurs(Kurs k) {
		for (Kurs r : this.kurse) {
            if (k.getKursID() == r.getKursID()) {
                this.kurse.remove(r);
                this.saveKurse();
                break;
            }
        }

        throw new IllegalArgumentException("Kurs wurde nicht gefunden");
	}

	@Override
	public void aenderKurs(Kurs k) {
		this.loescheKurs(k);
		this.speicherKurs(k);
	}
	
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