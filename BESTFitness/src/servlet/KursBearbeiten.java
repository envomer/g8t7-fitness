package servlet;

import java.io.IOException;
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

import Daos.KursManagement;
import constants.Constants;
import modells.Kurs;
import raum.RaumDAO;

@WebServlet("/KursBearbeiten")
public class KursBearbeiten extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		KursManagement km = (KursManagement) request.getServletContext().getAttribute(Constants.KURSDAO);
		int kursId = Integer.valueOf(request.getParameter("kursid").toString());
		
		Kurs kurs = km.getKursById(kursId);
		request.setAttribute("kurs", kurs);
		request.getRequestDispatcher("kursbearbeiten.jsp").include(request, response);
		
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
		int kursId = Integer.valueOf(request.getParameter("kursid").toString());
		RaumDAO raumDao = (RaumDAO) request.getServletContext().getAttribute(Constants.RAUMDAO);
		
		String datum = request.getParameter("datum");
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
		int maxKap = raumDao.getByRaumName(raum).getKapazitaet();



		KursManagement km = (KursManagement) request.getServletContext().getAttribute(Constants.KURSDAO);

		Kurs neuerKurs = km.getKursById(kursId);


		neuerKurs.setKursUhrVon(uhrVon);
		neuerKurs.setKursUhrBis(uhrBis);
		neuerKurs.setKursName(name);
		neuerKurs.setKursDatum(date);
		neuerKurs.setKursTrainer(trainer);
		neuerKurs.setKursRaum(raum);
		neuerKurs.setTeilnehmerAnzahl(maxKap);

        if( maxKap < neuerKurs.getTeilnehmer().size() ) {
            request.setAttribute("kurs", neuerKurs);
            request.setAttribute("error", "Die Teilnehmer anzahl darf die maximale Kapazitaet des Raumes nicht ueberschreiten.");

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/kursbearbeiten.jsp");
            dispatcher.forward(request,response);
        }
        else {
            km.saveKurse();

            response.sendRedirect("kurse.jsp");
        }

	}
}
