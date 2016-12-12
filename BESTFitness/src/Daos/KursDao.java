package Daos;

import java.util.ArrayList;

import modells.Kurs;
import modells.user;

public interface KursDao {

	public ArrayList<Kurs> getKursList();
	public Kurs getKursById(int id);
	public void speicherKurs(Kurs k);
	public void loescheKurs(Kurs k);
	public void aenderKurs(Kurs k);
	
}
