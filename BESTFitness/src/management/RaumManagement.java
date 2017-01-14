package management;

import java.io.*;
import java.util.ArrayList;

import dao.RaumDAO;
import modells.Raum;

public class RaumManagement implements RaumDAO
{
    private String Pfad;
    private ArrayList<Raum> raeume;

    public RaumManagement()
    {
        this.Pfad = "raum.txt";
        this.raeume = new ArrayList<Raum>();

        File file = new File(this.Pfad);
        if (file.exists()) {
            this.loadList();
        } else {
            try {
                file.createNewFile();
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
    public void removeRaum(Raum raum) {
        for (Raum r : this.raeume) {
            if (raum.getRaumNr() == r.getRaumNr()) {
                this.raeume.remove(r);
                this.saveRaeume();
                break;
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
