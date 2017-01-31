package Daos;

import java.util.ArrayList;

import modells.Kurs;
import modells.user;

public interface KursDao {

	/**
	 * speichert die Datei in ArrayList
	 * @return ArrayList gibt die ArrayList zurück
	 */
	public ArrayList<Kurs> getKursList();
	
	/**
	 * Gibt den Kurs anhand der KursID zurück
	 * @param 	id	Die ID des gesuchtn Kurses
	 * @return 	Gibt anhand der ID, ein Kurs-Objekt zurück
	 */
	public Kurs getKursById(int id);

	/**
	 * speichert Objekt kurs (k) in die Datei
	 * @param
	 */
	public void speicherKurs(Kurs k);
	
	/**
	 * löscht den Kurs falls enthaelt
	 * "k" das Objekt des Kurses die gelöscht werden soll
	 * @param 
	 */
	public void loescheKurs(Kurs k);
	
	/**
	 * Der Kurs mit der ID des Kurs aus der Liste gefunden und gelöscht dann eine neue Kurs einfügen werden soll
	 * k zu veraendernder Kurs
	 * @param 
	 */
	public void aenderKurs(Kurs k);
	
}
