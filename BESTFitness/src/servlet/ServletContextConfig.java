package servlet;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import Daos.KursManagement;
import Daos.NotificationManager;
import Daos.managmentuser;
import constants.Constants;
import raum.RaumManagement;

@WebListener
public class ServletContextConfig implements ServletContextListener {

	/**
	 * contextDestroyed
	 */
	@Override
	public void contextDestroyed(ServletContextEvent context) {
		
	}

	/**
	 * Hier werden die Management klassen initializiert, sobald sie initialisiert sind die überall aufrufbar
	 */
	@Override
	public void contextInitialized(ServletContextEvent context) {	
		context.getServletContext().setAttribute(Constants.KURSDAO, new KursManagement("kurse.txt"));
		context.getServletContext().setAttribute(Constants.USERDAO, new managmentuser("user.txt"));
		context.getServletContext().setAttribute(Constants.RAUMDAO, new RaumManagement("raum.txt"));
		context.getServletContext().setAttribute(Constants.NOTIFICATION, new NotificationManager("notification.txt"));

	}

}
