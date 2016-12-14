package servlet;

import raum.Raum;
import raum.RaumManagement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/raum")
public class raumservlet extends HttpServlet
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            RaumManagement raeume = new RaumManagement();
            System.out.println("getting raeume...." + raeume.getRaumList().size());

            request.setAttribute("raeume", raeume.getRaumList());
        }
        catch (Exception e) {
            request.setAttribute("raeume", null);
        }

        response.setContentType("text/html");
        request.getRequestDispatcher("raum.jsp").include(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("saving raeume");

        int raumnr = Integer.parseInt(request.getParameter("raumnr"));
        String name = request.getParameter("name");
        int kapazitaet = Integer.parseInt(request.getParameter("kapazitaet"));

        if( name == "" ) name = "N/A";

        Raum raum = new Raum(raumnr, name, kapazitaet);

        RaumManagement raeume = new RaumManagement();
        raeume.addRaum(raum);

        response.sendRedirect("/raum");
    }

    protected void render(HttpServletRequest request, HttpServletResponse response) {

    }
}
