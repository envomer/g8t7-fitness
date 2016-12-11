package raum;

public class Raum
{
    private int raumNr;
    private int kapazitaet;
    private boolean frei;

    public Raum() {}

    public Raum(int raumNr, int kapazitaet) {
        this.raumNr = raumNr;
        this.kapazitaet = kapazitaet;
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
}
