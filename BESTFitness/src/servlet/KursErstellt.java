package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import management.KursManagement;
import modells.Kurs;
import raum.Raum;

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
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
	    DateFormat df = new SimpleDateFormat("dd.mm.yyyy"); 
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
		int maxKap = Integer.parseInt(request.getParameter("teilnameanzahl"));
		
		Kurs neuerKurs = new Kurs(1, name, date, uhrVon, uhrBis, raum, trainer, maxKap);	
		KursManagement km = new KursManagement("kurs.txt");
		km.speicherKurs(neuerKurs);
		
		System.out.println("Kurs wurde erstellt!");
		
		String nextJSP = "leiter.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextJSP);
		dispatcher.forward(request,response);
	}
}
