package servlet;

import java.io.IOException;

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
import modells.user;

@WebServlet("/KursAnmelden")
public class KursAnmelden extends HttpServlet{

	
	/**
	 * Hier wird nur login.jsp angezeigt
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}
	
	
	/**
	 * Hier wird entwerder ein Benutzer als Teilnehmer eingetragen oder der Kurs bewertet und kommentiert
	 * Und zu kurs.jsp weitergeleitet
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action").toString();
		int kursId = Integer.valueOf(request.getParameter("kurs").toString());
		user user = (modells.user) request.getSession().getAttribute("user");
		
		KursManagement km = (KursManagement) request.getServletContext().getAttribute(Constants.KURSDAO);
		
		Kurs kurs = km.getKursById(kursId);
		
		if(action.equals("Anmelden")){
			if(kurs.getTeilnehmer().size() + 1 <= kurs.getTeilnehmerAnzahl()){
				kurs.getTeilnehmer().add(user.getBenutzerid());
			}
		}else if(action.equals("rate")){
			String comment = request.getParameter("comment").toString();
			int rating = Integer.valueOf(request.getParameter("rating").toString());
			if(!kurs.getBewertung().containsKey(user.getBenutzerid())){
				kurs.getBewertung().put(user.getBenutzerid(), rating);
				kurs.getCommentare().add(comment);
			}
			
		}else {
			kurs.getTeilnehmer().remove(user.getBenutzerid());
		}
		
		km.saveKurse();
		
		response.sendRedirect("kurse.jsp");
		
	}
	
}
