package modells;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import Daos.KursManagement;
import modells.Kurs;
@SuppressWarnings("unused")
public class statistics {
	
	private Object kurse;

	public statistics(){}
	
	/**
	 * topRatedCourse
	 */
	public void topRatedCourse(){
		//TODO: 1. Top bewerteste Kurse
		KursManagement kurse = new KursManagement("kurs.txt");
		int anzahl = 0;
		for(Kurs kurs: kurse.getKursList()){
			
		}
	}
	
	/**
	 * currentlyCourses
	 * @return
	 */
	public int currentlyCourses(){
		//TODO: 2. Aktuelle Kurse
		KursManagement kurse = new KursManagement("kurs.txt");
		int anzahl = kurse.getKursList().size();
		return anzahl;
	}
	
	/**
	 * completedCourses
	 */
	public void completedCourses(){
		//TODO: 3. Abgeschlossene Kurse
		KursManagement kurse = new KursManagement("completed.txt");
		List<String> completedCourses = new ArrayList<String>();
	
		for(Kurs kurs: kurse.getKursList()){
			if(true){ //TODO: Prüfe ob Kurs schon abgeschlossen ist.
				completedCourses.add((String) this.kurse);
			}
		}	
	}
	
	/**
	 * mostVisitedCourses
	 */
	public void mostVisitedCourses(){
		//TODO: 4. Meistbesuchte Kurse
	}
	
	/**
	 * mostVisitedTrainers
	 */
	public void mostVisitedTrainers(){
		//TODO: 5. Meistbesuchte Trainer (LeiterView)
	}
	
	/**
	 * courseMembers
	 */
	public void courseMembers(){
		//TODO: 6. Aktuelle Kurse Kurse mit Teilnehmer (TrainerView)
	}
	
	/**
	 * completedCoursesMembers
	 */
	public void completedCoursesMembers(){
		//TODO: 7. Abgeschlossene Kurse mit Teilnehmer (TrainerView)
	}

	public Date parseDate(String datum) {
        DateFormat df = null;
        if(datum.contains(".")){
            df = new SimpleDateFormat("dd.MM.yyyy");
        }else if(datum.contains("-")){
            df = new SimpleDateFormat("yyyy-MM-dd");
        }else {
            df = new SimpleDateFormat("dd/MM/yyyy");
        }

        Date date = null;

        try {
            date = df.parse(datum);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        return date;
    }

}
