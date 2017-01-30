<%@ page import="java.util.ArrayList" %>
<%@ page import="raum.Raum" %>
<%@ page import="raum.RaumManagement" %>
<%@ page import="modells.user" %>
<%@ page import="constants.Constants" %>

<jsp:include page="partials/header.jsp" />

<%
    user usr = (user)session.getAttribute("user");
    if( usr != null ) {
        System.out.println(usr.getBenutzertyp());
    }
%>
<% if(usr != null && usr.getBenutzertyp().equals("leiter.jsp")) { %>
<h1>Raum verwaltung</h1>
<div class="form-container">
    <form action="raumservlet" method="POST" class="form">
        <div class="form-group">
            <label for="raum-name">Name</label>
            <input required type="text" name="name" id="raum-name" required>
        </div>
        <div class="form-group">
            <label for="raum-name">Kapazitaet</label>
            <input required type="text" name="kapazitaet" id="raum-kapazitaet" required>
        </div>
        <div class="actions">
            <button class="btn" type="submit">Speichern</button>
        </div>
    </form>
</div>
<% } %>

<%
	RaumManagement raumdao = (RaumManagement) request.getServletContext().getAttribute(Constants.RAUMDAO);
    ArrayList<Raum> raeume = raumdao.getRaumList();
    int anzahl = raeume.size();
//    out.print("Anzahl:" + anzahl);
    if( anzahl > 0 ) {
%>

<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Nr.</th>
                <th>Name</th>
                <th>Kapazitaet</th>
            </tr>
        </thead>
        <tbody>
        <%
            for(Raum raum : raeume) {
                out.print("<tr>");
                out.print("<td>" + raum.getRaumNr() + "</td>");
                out.print("<td>" + raum.getName() + "</td>");
                out.print("<td>" + raum.getKapazitaet() + "</td>");
                out.print("</tr>");
            }
        %>
        </tbody>
    </table>
</div>
<% } %>
<jsp:include page="partials/footer.jsp" />