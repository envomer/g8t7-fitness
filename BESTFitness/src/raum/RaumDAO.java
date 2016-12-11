package raum;

import java.util.ArrayList;

public interface RaumDAO
{
    /**
     * Raum speichern
     * @param raum
     * @return
     */
    public void addRaum(Raum raum);

    /**
     * Raum durch raumNr holen
     * @return
     */
    public Raum getByRaumNr(int raumNr);

    /**
     * Alle räume holen
     * @return
     */
    public ArrayList<Raum> getRaumList();

    /**
     * Raum löschen
     * @param raum
     */
    public void removeRaum(Raum raum);

    /**
     * Räume speichern
     */
    public void saveRaeume();
}
