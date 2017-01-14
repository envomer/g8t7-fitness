package dao;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import modells.Notification;

public class NotificationManager implements NotificationDao {

	public ArrayList<Notification> notificationList;
	private String FileName;
	
	public NotificationManager(String fileName) {
		FileName = fileName;
		notificationList = new ArrayList<Notification>(); 

		File dosya = new File(FileName); 

		if (dosya.exists()) {
			dbLaden();
		} else {
			try {
				dosya.createNewFile();
				dbSpeichern();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
	}
	
	@Override
	public ArrayList<Notification> getNotifications() {
		return notificationList;
	}

	@Override
	public Notification getNotificationbyUser(String user) {
		for (Notification f : notificationList) {

			if (f.getUser().equals(user))
				return f;
		}

		return null;
	}

	@Override
	public boolean speicherNotification(Notification fr) {
	
		return false;
	}

	@Override
	public void loescheNotification(Notification fr) {
		
	}
	
	public void dbSpeichern() {

	}

	@SuppressWarnings("unchecked") 
	public void dbLaden() {
		
	}

}
