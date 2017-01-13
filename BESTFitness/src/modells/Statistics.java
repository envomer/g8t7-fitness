package modells;

import java.util.ArrayList;
import java.util.List;

import management.KursManagement;
import modells.Kurs;
@SuppressWarnings("unused")
public class Statistics {
	private Object kurse;

	public Statistics(){}
	
	
	public void topRatedCourse(){
		//TODO: 1. Top bewerteste Kurse
		KursManagement kurse = new KursManagement("kurs.txt");
		int anzahl = 0;
		for(Kurs kurs: kurse.getKursList()){
			
		}
	}
	
	public int currentlyCourses(){
		//TODO: 2. Aktuelle Kurse
		KursManagement kurse = new KursManagement("kurs.txt");
		int anzahl = kurse.getKursList().size();
		return anzahl;
	}
	
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
	
	public void mostVisitedCourses(){
		//TODO: 4. Meistbesuchte Kurse
	}
	
	public void mostVisitedTrainers(){
		//TODO: 5. Meistbesuchte Trainer (LeiterView)
	}
	
	public void courseMembers(){
		//TODO: 6. Aktuelle Kurse Kurse mit Teilnehmer (TrainerView)
	}
	
	public void completedCoursesMembers(){
		//TODO: 7. Abgeschlossene Kurse mit Teilnehmer (TrainerView)
	}

}
