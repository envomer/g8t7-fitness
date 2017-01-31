package servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Daos.KursManagement;
import constants.Constants;
import modells.Kurs;
import raum.RaumDAO;

/**
 * Servlet implementation class KursErstellt
 */
@WebServlet("/KursErstellt")
public class KursErstellt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KursErstellt() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 * @param name die Name des Kurses
	 * @param datum das Datum des Kurses
	 * @param uhrVon der Beginn des Kurses
	 * @param uhrBis der Ende des Kurses
	 * @param raum die Raum Nummer des Kurses
	 * @param trainer der Trainer des Kurses
	 * @param maxKap maximale Teilnehmer Anzahl des Kurses
	 *            Kurs erstellt und in die Liste gespeichert
	 * 
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("kursname");
		
		String datum = request.getParameter("datum");
		RaumDAO raumDao = (RaumDAO) request.getServletContext().getAttribute(Constants.RAUMDAO);
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
		
	    String uhrVon = request.getParameter("timevon");
	    String uhrBis = request.getParameter("timebis");
		String raum = request.getParameter("raum");
		String trainer = request.getParameter("trainer");
		//int maxKap = raumDao.getByRaumNr(Integer.parseInt(raum)).getKapazitaet();
		int maxKap = raumDao.getByRaumName(raum).getKapazitaet();
		
		KursManagement km = (KursManagement) request.getServletContext().getAttribute(Constants.KURSDAO);
		
		Kurs neuerKurs = new Kurs(km.getKursList().size() + 1, name, date, uhrVon, uhrBis, raum, trainer, maxKap);	
		km.speicherKurs(neuerKurs);
						
		response.sendRedirect("kurse.jsp");
	}
}
