package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import management.UserManagement;
import modells.Login;


/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginservlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		String	seite ;
	    UserManagement managuser = new UserManagement("DBuser.txt");
	    boolean check  = false;
	    if (benutzername != null) {
	    	for (int a = 0;a < managuser.getuserList().size(); a++ ){
	    	
	    		if (managuser.getuserList().get(a).getBenutzerid() == Integer.valueOf(benutzername))
				{
					if(managuser.getuserList().get(a).getPass().equals(password)){
                        HttpSession session = request.getSession();
                        session.setAttribute("user", managuser.getuserList().get(a));


					    check = true;
                        break;

//						seite = managuser.getuserList().get(a).getBenutzertyp();
//						request.setAttribute("loginseite", managuser.getuserList().get(a));
//						RequestDispatcher dispa = request.getRequestDispatcher(seite);
//						dispa.forward(request, response);
						
					}
				}
		    }
	    	 if(check==false){
                 request.setAttribute("loginseite", "Falsche Benutzerid oder Kennwort");
                 RequestDispatcher dispa = request.getRequestDispatcher("NewFile.jsp");
                 dispa.forward(request, response);
	    	 }
	    	 else {
                 response.sendRedirect("/");
             }
	    }
	}
}