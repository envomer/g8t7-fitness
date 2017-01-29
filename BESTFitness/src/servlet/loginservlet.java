package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Daos.managmentuser;
import constants.Constants;


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
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String benutzername = request.getParameter("txt_BenutzerID");
		String password = request.getParameter("txt_PWD");
		
	    managmentuser managuser = (managmentuser) request.getServletContext().getAttribute(Constants.USERDAO);
	    
	    boolean check  = false;
	    if (benutzername != null) {
	    	for (int a = 0;a < managuser.getuserList().size(); a++ ){
	    	
	    		if (managuser.getuserList().get(a).getBenutzerid().equals(benutzername))
				{
					if(managuser.getuserList().get(a).getPass().equals(password)){
                        HttpSession session = request.getSession();
                        session.setAttribute("user", managuser.getuserList().get(a));

					    check = true;
                        break;						
					}
				}
		    }
	    	 if(check==false){
                 String error = "loginerror";
                 response.sendRedirect("login.jsp?" + error);
	    	 }
	    	 else {
                 response.sendRedirect("home.jsp");
             }
	    }
	}
}
