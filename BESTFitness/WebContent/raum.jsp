<%@ page import="java.util.ArrayList" %>
<%@ page import="raum.Raum" %>
<jsp:include page="partials/header.jsp" />

<h1>Raum verwaltung.</h1>

<div class="form-container">
    <form action="/raum" method="POST" class="form">
        <div class="form-group">
            <label for="raum-name">Raum Nr.</label>
            <input required type="text" name="raumnr" id="raum-nr">
        </div>
        <div class="form-group">
            <label for="raum-name">Name</label>
            <input required type="text" name="name" id="raum-name">
        </div>
        <div class="form-group">
            <label for="raum-name">Kapazitaet</label>
            <input required type="text" name="kapazitaet" id="raum-kapazitaet">
        </div>
        <div class="actions">
            <button class="btn" type="submit">Speichern</button>
        </div>
    </form>
</div>

<table>
    <thead>
        <tr>
            <th>Nr.</th>
            <th>Name</th>
            <th>Kapazitaet</th>
        </tr>
    </thead>
    <tbody>
    <%
        ArrayList<Raum> raeume = (ArrayList<Raum>) request.getAttribute("raeume");
        int anzahl = raeume.size();
        out.print("Anzahl:" + anzahl);

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

</body>
</html>
