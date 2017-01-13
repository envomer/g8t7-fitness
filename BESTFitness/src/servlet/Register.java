package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import management.UserManagement;
import modells.User;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String action = request.getParameter("action");
		if(action.equals("Register")){
		String benutzertyp=request.getParameter("typ");
		String benutzerid=request.getParameter("id");
		String benutzervorname=request.getParameter("vorname");
		String benutzernachname=request.getParameter("nachname");
		String adresse=request.getParameter("addresse");
		String pass=request.getParameter("pass");
		
		User u = new User(benutzertyp, Integer.parseInt(benutzerid),benutzernachname,benutzervorname,adresse, pass);
		UserManagement managuser = new UserManagement("DBuser.txt");
		managuser.speichereuser(u);
		
		System.out.println("gespeicht");
		
		System.out.println("Size: "+managuser.getuserList().size());
        request.setAttribute("erfolg", benutzerid);
		RequestDispatcher dispa = request.getRequestDispatcher("register.jsp");
		dispa.forward(request, response);
		}
		else if(action.equals("Loeschen")){
			
			String benutzerid=request.getParameter("idloesch");
			
			UserManagement managuser = new UserManagement("DBuser.txt");
			for (int a = 0;a < managuser.userListe.size(); a++ )
				if (managuser.userListe.get(a).getBenutzerid() == Integer.valueOf(benutzerid)){
					managuser.loescheuser(managuser.userListe.get(a));
			request.setAttribute("geloeschteid", "id: "+benutzerid+ " wurde erfolgreich geloescht" );}
				else{
				request.setAttribute("geloeschteid", "id: "+benutzerid+ " existiert nicht" );
				
			} 
		
			RequestDispatcher dispa = request.getRequestDispatcher("register.jsp");
			dispa.forward(request, response);
			
		}
		else{
			RequestDispatcher dispa = request.getRequestDispatcher("NewFile.jsp");
			dispa.forward(request, response);
			
		}
		
		
	}

}
