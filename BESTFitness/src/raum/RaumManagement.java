package raum;

import java.io.Serializable;
import java.util.ArrayList;

public class RaumManagement implements Serializable, RaumDAO
{

    @Override
    public void deleteRaum(Raum raum) {

    }

    @Override
    public Raum getByRaumNr() {
        return null;
    }

    @Override
    public ArrayList<Raum> getRaumList() {
        return null;
    }

    @Override
    public boolean saveRaum(Raum raum) {
        return false;
    }
}
