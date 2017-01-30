package servlet;

import raum.Raum;
import raum.RaumManagement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import constants.Constants;

import java.io.IOException;

@WebServlet("/raumservlet")
public class raumservlet extends HttpServlet
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        try {
            RaumManagement raeume = (RaumManagement) request.getServletContext().getAttribute(Constants.RAUMDAO);
            request.setAttribute("raeume", raeume.getRaumList());
        }
        catch (Exception e) {
            request.setAttribute("raeume", null);
        }

        response.setContentType("text/html");
        request.getRequestDispatcher("raum.jsp").include(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	RaumManagement raeume = (RaumManagement) request.getServletContext().getAttribute(Constants.RAUMDAO);
        
        int raumnr = raeume.getRaumList().size() + 1;
        String name = request.getParameter("name");
        int kapazitaet = Integer.parseInt(request.getParameter("kapazitaet"));

        if( name == "" ) {
        	name = "N/A";
        }

        Raum raum = new Raum(raumnr, name, kapazitaet);

        raeume.addRaum(raum);

        response.sendRedirect("raum.jsp");
    }

    protected void render(HttpServletRequest request, HttpServletResponse response) {

    }
}
