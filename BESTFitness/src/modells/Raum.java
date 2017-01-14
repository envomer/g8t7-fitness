package modells;

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

    public int getRaumNr() {
        return raumNr;
    }

    public void setRaumNr(int raumNr) {
        this.raumNr = raumNr;
    }

    public int getKapazitaet() {
        return kapazitaet;
    }

    public void setKapazitaet(int kapazitaet) {
        this.kapazitaet = kapazitaet;
    }

    public boolean isFrei() {
        return frei;
    }

    public void setFrei(boolean frei) {
        this.frei = frei;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
