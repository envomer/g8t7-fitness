package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Daos.KursManagement;
import Daos.NotificationManager;
import constants.Constants;
import modells.Kurs;
import modells.Notification;


/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/kurse")
public class kursservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Die doGet Funktiuon ruft die kurse.jsp auf
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("kurse.jsp").include(request, response);
    }

    /**
     * Die doPost Funktion ist für das löschen bearbeiten und kommentieren von kursen zuständig
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    	String action = request.getParameter("action");
    	KursManagement kursManagement = (KursManagement) request.getServletContext().getAttribute(Constants.KURSDAO);
    	
    	int kursid = Integer.valueOf(request.getParameter("kursid"));
    	Kurs kurs = kursManagement.getKursById(kursid);
		NotificationManager notificationManager = (NotificationManager) request.getServletContext().getAttribute(Constants.NOTIFICATION); 
    	
    	if(action.equalsIgnoreCase("loschen")){
    					
			//save notification for users
			
			for(String teilnehmer : kurs.getTeilnehmer()){
				notificationManager.notificationList.add(new Notification(teilnehmer, kurs.getKursName() + " wurde abgesagt/geloscht"));
			}
			
			//save notification for trainer
			notificationManager.notificationList.add(new Notification(kurs.getKursTrainer(), kurs.getKursName() + " wurde abgesagt/geloscht"));

    		notificationManager.dbSpeichern();
    		
    		kursManagement.loescheKurs(kurs);
    		
    		response.sendRedirect("kurse.jsp");
    		
    	}else if(action.equalsIgnoreCase("bearbeiten")){
    		response.sendRedirect("kurse.jsp");
    	}else if(action.equalsIgnoreCase("comments")){
    		request.setAttribute("comments", kurs);
    		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/kurse.jsp");
    		dispatcher.forward(request,response);
    	}
    	else {
    		request.setAttribute("teilnehmer", kurs);
    		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/kurse.jsp");
    		dispatcher.forward(request,response);
    	}
    	
    }
}
