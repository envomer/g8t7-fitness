package Daos;

import java.util.ArrayList;
import modells.Notification;

public interface NotificationDao {

	public ArrayList<Notification> getNotifications(); 
	public Notification getNotificationbyUser(String id);
	public boolean speicherNotification(Notification fr); 
	public void loescheNotification(Notification fr);
	
}
