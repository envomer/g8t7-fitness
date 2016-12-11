package raum;

import java.util.ArrayList;

public interface RaumDAO
{
    /**
     * Raum löschen
     * @param raum
     */
    public void deleteRaum(Raum raum);

    /**
     * Raum durch raumNr holen
     * @return
     */
    public Raum getByRaumNr();

    /**
     * Alle räume holen
     * @return
     */
    public ArrayList<Raum> getRaumList();

    /**
     * Raum speichern
     * @param raum
     * @return
     */
    public boolean saveRaum(Raum raum);
}
