package raum;

import java.io.Serializable;

public class Raum implements Serializable
{
    private int raumNr;
    private int kapazitaet;
    private String name;
    private boolean frei;

    public Raum() {}

    public Raum(int raumNr, String name, int kapazitaet) {
        this.raumNr = raumNr;
        this.kapazitaet = kapazitaet;
        this.name = name;
    }

    /**
     * Get Raum nummer
     * @return int
     */
    public int getRaumNr() {
        return raumNr;
    }

    /**
     * Raum nummer setzen
     * @param raumNr Raum nummer
     */
    public void setRaumNr(int raumNr) {
        this.raumNr = raumNr;
    }

    /**
     * Get Raum kapazitaet
     * @return
     */
    public int getKapazitaet() {
        return kapazitaet;
    }

    /**
     * Raum kapazitaet setzen
     * @param kapazitaet Kapazitaet
     */
    public void setKapazitaet(int kapazitaet) {
        this.kapazitaet = kapazitaet;
    }

    /**
     * Is der raum frei?
     * @return Boolean
     */
    public boolean isFrei() {
        return frei;
    }

    /**
     * Raum als frei setzen
     * @param frei
     */
    public void setFrei(boolean frei) {
        this.frei = frei;
    }

    /**
     * Get raum namen
     * @return String
     */
    public String getName() {
        return name;
    }

    /**
     * Raum name setzen
     * @param name Raum name
     */
    public void setName(String name) {
        this.name = name;
    }
}
