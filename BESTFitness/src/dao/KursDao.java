package Daos;

import java.util.ArrayList;

import modells.Kurs;
import modells.user;

public interface KursDao {

	/**
	 * speichert die Datei in ArrayList
	 * @return ArrayList gibt die ArrayList zur�ck
	 */
	public ArrayList<Kurs> getKursList();
	
	/**
	 * Gibt den Kurs anhand der KursID zur�ck
	 * @param 	id	Die ID des gesuchtn Kurses
	 * @return 	Gibt anhand der ID, ein Kurs-Objekt zur�ck
	 */
	public Kurs getKursById(int id);

	/**
	 * speichert Objekt kurs in die Datei
	 * @param kurs	Objekt "k" gespeichert werden soll
	 */
	public void speicherKurs(Kurs k);
	
	/**
	 * l�scht den Kurs falls enthaelt
	 * @param "k" das Objekt des Kurses die gel�scht werden soll
	 */
	public void loescheKurs(Kurs k);
	
	/**
	 * Der Kurs mit der ID des Kurs aus der Liste gefunden und gel�scht dann eine neue Kurs einf�gen werden soll
	 * @param k zu veraendernder Kurs
	 */
	public void aenderKurs(Kurs k);
	
}
