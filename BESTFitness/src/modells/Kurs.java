package modells;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Kurs implements Serializable, Comparable<Kurs> {
	
	private static final long serialVersionUID = 1L;
	private int kursID;
	private String kursName;
	private Date datum;
	private String uhrVon;
	private String uhrBis;
	private String raum;
	private String trainer;
	private int teilnehmerAnzahl;
	private List<String> teilnehmer;
	private List<String> commentare;
	private Map<String, Integer> bewertung;
	
	/**
	 * Konstruktor
	 * @param kursID id des Kurses
	 * @param kursName Name des Kurses
	 * @param datum das Datum des Kurses
	 * @param uhrVon der Beginn des Kurses
	 * @param uhrBis der Ende des Kurses
	 * @param raum die Raum Nummer des Kurses
	 * @param trainer der Trainer des Kurses
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
		teilnehmer = new ArrayList<String>();
		commentare = new ArrayList<String>();
		bewertung = new HashMap<String, Integer>();
	}
	
	/**
	 * SpeicheRt Bewertung eines Kurses
	 * @return
	 */
	public int getRating(){
		
		int rating = 0;
		
		for(String key : bewertung.keySet()){
			rating += bewertung.get(key);
		}
		
		return rating;
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	/**
	 * @return kursID gibt die ID des Kurses zur�ck
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
	 * @return kursName gibt den Kurs Namen zur�ck
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
	 * @return teilnehmerAnzahl gibt die max. Teilnehmer Anzahl zur�ck
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
	
	public List<String> getTeilnehmer() {
		return teilnehmer;
	}
	
	public void setTeilnehmer(List<String> teilnehmer) {
		this.teilnehmer = teilnehmer;
	}
	
	public Map<String, Integer> getBewertung() {
		return bewertung;
	}
	
	public List<String> getCommentare() {
		return commentare;
	}

	@Override
	public int compareTo(Kurs o) {
		return this.getKursDatum().compareTo(o.getKursDatum());
	}

	public boolean isExpired() {
        Date now = new Date();
        return this.getKursDatum().compareTo(now) == -1;
    }
}
