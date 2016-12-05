package loginservlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import login.classlogin;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginservlet() {
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
		String benutzername = request.getParameter("txt_BenutzerID");
		String password = request.getParameter("txt_PWD");
	System.out.println(benutzername);
	System.out.println(password);
		classlogin logclass = new classlogin();
		boolean authentifikation = logclass.authentificate(benutzername, password);
		
	String	seite = logclass.seiteoeffnen;
	System.out.println("Seite: "+seite);
		if(authentifikation){
			request.setAttribute("loginseite", logclass);
			RequestDispatcher dispa = request.getRequestDispatcher(seite);
			dispa.forward(request, response);
			
		}
	}

}
