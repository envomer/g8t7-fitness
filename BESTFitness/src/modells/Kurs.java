package modells;

import java.io.Serializable;
import java.util.Date;

import raum.Raum;

public class Kurs implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private int kursID;
	private String kursName;
	private Date datum;
	private String uhrVon;
	private String uhrBis;
	private String raum;
	private String trainer;
	private int teilnehmerAnzahl;
	
	/**
	 * Kontruktor
	 * @param kursName Name des Kurses
	 * @param kursID id des Kurses
	 * @param teilnehmerAnzahl maximale TeilnehmerAnzahl
	 */
	public Kurs(int kursID, String kursName, Date datum, String uhrVon, String uhrBis, String raum, String trainer, int teilnehmerAnzahl){
		setKursID(kursID);
		setKursName(kursName);
		setKursDatum(datum);
		setKursUhrVon(uhrVon);
		setKursUhrBis(uhrBis);
		setKursRaum(raum);
		setKursTrainer(trainer);
		setTeilnehmerAnzahl(teilnehmerAnzahl);
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	/**
	 * @return kursID gibt die ID des Kurses zurück
	 */
	public int getKursID() {
		return kursID;
	}	
	
	/**
	 * Weist der Instanzvariable kursID die ID zu
	 * @param kursID ID die zugewiesen werden soll
	 */
	public void setKursID(int kursID) {
		this.kursID = kursID;
	}
	
	/**
	 * @return kursName gibt den Kurs Namen zurück
	 */
	public String getKursName() {
		return kursName;
	}
	
	/**
	 * Weist der Instanzvariable kursName den Namen zu
	 * @param kursName	Name des Kurses das zugewiesen werden soll
	 */
	public void setKursName(String kursName) {
		this.kursName = kursName;
	}
	
	/**
	 * @return teilnehmerAnzahl gibt die max. Teilnehmer Anzahl zurück
	 */
	public int getTeilnehmerAnzahl() {
		return teilnehmerAnzahl;
	}
	
	/**
	 * Weist der Instanzvariable teilnehmerAnzahl die maximale Teilnehmer-Anzahl
	 * @param teilnehmerAnzahl	Teilnehmeranzahl das zugewiesen werden soll
	 */
	public void setTeilnehmerAnzahl(int teilnehmerAnzahl) {
		this.teilnehmerAnzahl = teilnehmerAnzahl;
	}

	public Date getKursDatum() {
		return datum;
	}

	public void setKursDatum(Date datum) {
		this.datum = datum;
	}

	public String getKursRaum() {
		return raum;
	}

	public void setKursRaum(String r) {
		this.raum = r;
	}

	public String getKursTrainer() {
		return trainer;
	}

	public void setKursTrainer(String trainer) {
		this.trainer = trainer;
	}

	public String getKursUhrVon() {
		return uhrVon;
	}

	public void setKursUhrVon(String uhrVon) {
		this.uhrVon = uhrVon;
	}

	public String getKursUhrBis() {
		return uhrBis;
	}

	public void setKursUhrBis(String uhrBis) {
		this.uhrBis = uhrBis;
	}	
					
}
