package raum;

import java.io.*;
import java.util.ArrayList;

public class RaumManagement implements RaumDAO
{
    private String Pfad;
    private ArrayList<Raum> raeume;

    /**
     * Raum management mit mit gegebenen pfad initialisieren.
     * Die daten laden falls es File schon gibt, ansonsten File erstellen und daten speichern.
     * @param pfad
     */
    public RaumManagement(String pfad)
    {
        this.Pfad = pfad;
        this.raeume = new ArrayList<Raum>();

        File file = new File(this.Pfad);
        if (file.exists()) {
            this.loadList();
        } else {
            try {
                file.createNewFile();
                saveRaeume();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * Raum hinzufuegen
     * @param raum
     * @return
     */
    @Override
    public void addRaum(Raum raum) {
        this.raeume.add(raum);
        this.saveRaeume();
    }

    /**
     * Raum löschen
     * @param raum
     */
    @Override
    public boolean removeRaum(Raum raum) {
        for (Raum r : this.raeume) {
            if (raum.getRaumNr() == r.getRaumNr()) {
                this.raeume.remove(r);
                this.saveRaeume();
                return true;
            }
        }

        throw new IllegalArgumentException("Raum nicht gefunden");
    }

    /**
     * Get raum
     * @param raumNr
     * @return
     */
    @Override
    public Raum getByRaumNr(int raumNr) {
        for (Raum r : this.raeume) {
            if (raumNr == r.getRaumNr()) {
                return r;
            }
        }

        return null;
    }
    
    /**
     * Get raum 
     * @param raumName
     * @return
     */
    @Override
	public Raum getByRaumName(String raumName) {
    	Raum r1 = null;
    	for (Raum r : this.raeume) {
            if (raumName == r.getName()) {
                return r;
            }
            else r1 = r;
        }

        return r1;
	}

    /**
     * Alle raume bekommen
     * @return
     */
    @Override
    public ArrayList<Raum> getRaumList() {
        return this.raeume;
    }

    /**
     * Räume speichern
     */
    public void saveRaeume() {
        try {
            FileOutputStream fos = new FileOutputStream(this.Pfad);
            ObjectOutputStream oos = new ObjectOutputStream(fos);
            oos.writeObject(this.raeume);
            oos.close();
            fos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Daten laden
     */
    public void loadList()
    {
        try {
            FileInputStream fis = new FileInputStream(this.Pfad);
            ObjectInputStream ois = new ObjectInputStream(fis);
            this.raeume = (ArrayList<Raum>) ois.readObject();
            ois.close();
            fis.close();
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

	
}
