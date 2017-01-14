package management;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

import dao.NotificationDao;
import modells.Notification;

public class NotificationManager implements NotificationDao{
	public ArrayList<Notification> notificationList;
	private String FileName;
	
	public NotificationManager(String fileName){
		FileName = fileName;
		notificationList = new ArrayList<Notification>();
		
		File dosya = new File(FileName);
		
		if(dosya.exists()){
			dbLaden();
		}else{
			try{
				dosya.createNewFile();
				dbSpeichern();
			}catch (IOException e){
				e.printStackTrace();
			}
		}
	}
	
	//@SuppressWarnings("unchecked");
	private void dbLaden() {
		try{
			FileInputStream fis = new FileInputStream(FileName);
			ObjectInputStream ois = new ObjectInputStream(fis);
			notificationList = (ArrayList<Notification>) ois.readObject();
			
			ois.close();
			fis.close();
		}catch (IOException | ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	private void dbSpeichern() {
		try{
			FileOutputStream fos = new FileOutputStream(FileName);
			ObjectOutputStream oos = new ObjectOutputStream(fos);
			oos.writeObject(notificationList);
			oos.close();
			fos.close();
		} catch (IOException e){
			e.printStackTrace();
		}
		
	}
	@Override
	public ArrayList<Notification> getNotifications() {
		return notificationList;
	}
	@Override
	public Notification getNotificationbyUser(String id) {
		for(Notification f : notificationList){
			if(f.getUser().equals(id))
				return f;
		}
		return null;
	}
	@Override
	public boolean speicherNotification(Notification fr) {
		boolean bool = false;
		
		notificationList.add(fr);
		
		dbSpeichern();
		bool = true;
		return bool;
	}
	@Override
	public void loescheNotification(Notification fr) {
		boolean gefunden = false;
		
		for(Notification f : notificationList)
			if(f.getUser().equals(fr.getUser()))
				gefunden = true;
		if(gefunden == true){
			notificationList.remove(fr);
			dbSpeichern();
		}else
			throw new IllegalArgumentException("Dieser ID nicht existiert");
	}
}























