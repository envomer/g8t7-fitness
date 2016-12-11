package raum;

import java.io.*;
import java.util.ArrayList;

public class RaumManagement implements Serializable, RaumDAO
{
    private String Pfad;
    private ArrayList<Raum> raeume;

    public RaumManagement(String Pfad)
    {
        this.Pfad = Pfad;
        this.raeume = new ArrayList<Raum>();

        File file = new File(this.Pfad);
        try {
            file.getParentFile().mkdirs();
            file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }

        if (file.exists()) {
            this.getRaumList();
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
}
