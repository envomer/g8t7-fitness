package servlet;

import raum.RaumManagement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/raum")
public class raum extends HttpServlet
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RaumManagement raeume = new RaumManagement("./raeume.txt");
        System.out.println("getting raeume....");

        request.getRequestDispatcher("raum.jsp").include(request, response);
        response.setContentType("text/html");
        request.setAttribute("raeume", raeume.getRaumList());
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("saving raeume");

        response.sendRedirect("/raum");
    }

    protected void render(HttpServletRequest request, HttpServletResponse response) {

    }
}
