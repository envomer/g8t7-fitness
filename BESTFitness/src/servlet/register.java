package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Daos.managmentuser;
import modells.user;
import constants.Constants;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public register() {
		super();
	}

	/**
	 * Die doPost Funktiuon ruft die register.jsp auf
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("register.jsp");
	}

	/**
	 * Die doPost Funktiuon verarbeitet neue Registreiungen und das löschen von vorhandenen Daten
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action");
		managmentuser managuser = (managmentuser) request.getServletContext().getAttribute(Constants.USERDAO);
		
		if(action.equals("Register")){
			String benutzertyp=request.getParameter("typ");
			String benutzerid=request.getParameter("id");
			String benutzervorname=request.getParameter("vorname");
			String benutzernachname=request.getParameter("nachname");
			String adresse=request.getParameter("addresse");
			String pass=request.getParameter("pass");

			user u = new user(benutzertyp, benutzerid,benutzernachname,benutzervorname,adresse, pass);
            try {
                managuser.speichereuser(u);
			    request.setAttribute("erfolg", benutzerid);
            }
            catch(IllegalArgumentException e) {
                request.setAttribute("error", benutzerid);
            }

			RequestDispatcher dispa = request.getRequestDispatcher("register.jsp");
			dispa.forward(request, response);
		}
		else if(action.equals("Loeschen")){

			String benutzerid=request.getParameter("idloesch");
			
			for (int a = 0;a < managuser.userListe.size(); a++ ){
				if (managuser.userListe.get(a).getBenutzerid().equals(benutzerid)){
					managuser.loescheuser(managuser.userListe.get(a));
					request.setAttribute("geloeschteid", "id: "+benutzerid+ " wurde erfolgreich geloescht" );}
				else{
					request.setAttribute("geloeschteid", "id: "+benutzerid+ " existiert nicht" );

				}
			}

			RequestDispatcher dispa = request.getRequestDispatcher("register.jsp");
			dispa.forward(request, response);

		}
		else{
			RequestDispatcher dispa = request.getRequestDispatcher("register.jsp");
			dispa.forward(request, response);

		}
	}

}
