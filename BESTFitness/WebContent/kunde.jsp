<%@ page import="modells.user" %>
<%@ page import="modells.Kurs" %>
<%@ page import="constants.Constants" %>
<%@ page import="Daos.KursManagement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>
<%@page import="java.text.SimpleDateFormat"%>

<jsp:include page="partials/header.jsp" />

<%
    KursManagement km = (KursManagement)request.getServletContext().getAttribute(Constants.KURSDAO);
    ArrayList<Kurs> kurse = (ArrayList<Kurs>) km.getKursList();
    Collections.sort(kurse);
    Collections.reverse(kurse);
    user user = (user)session.getAttribute("user");
    SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
%>

<div class="table-responsive">
    <table width='100%' id="table1" class="table table-bordered">
        <tr>
            <th>Kurs</th>
            <th>Datum </th>
            <th>Trainer </th>
            <th>Bewertung</th>
            <% if(user != null) { %>
            <th>Bewerten</th>
            <% } %>
            <th>Anmeldung </th>
        </tr>
        <%
            for (int i = 0; i < kurse.size(); i++) {
                Kurs kur = kurse.get(i);
                String uhrzeit = kur.getKursUhrVon();
                uhrzeit += " - ";
                uhrzeit += kur.getKursUhrBis();

                String action = kur.getTeilnehmer().contains(user.getBenutzerid()) ? "Abmelden" : "Anmelden";
        %>

        <tr>
            <td align="right"> <%= kur.getKursName() %> </td>
            <td align="right"> <%=sdf.format(kurse.get(i).getKursDatum()) %> <%= uhrzeit %> </td>
            <td align="right"> <%= kur.getKursTrainer() %> </td>
            <td align="right"> <%= kur.getRating() %> </td>
            <% if(user != null) { %>
            <td align="right">
                <form method="post" action="KursAnmelden" class="kurs-signup">
                    <input type="hidden" value="rate" name="action">
                    <input type="hidden" name="kurs" value="<%=kur.getKursID()%>">
                    <input type="text" name="comment">
                    <select name="rating">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                    <input value="Bewerten" type="submit">
                </form>
            </td>
            <% } %>
            <td align="right">
                <form method="post" action="KursAnmelden" class="kurs-signup">
                    <input type="hidden" value="<%=action%>" name="action" />
                    <input type="hidden" name="kurs" value="<%=kur.getKursID()%>" />
                    <input value="<%=action%>" type="submit" />
                </form>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>
<jsp:include page="partials/footer.jsp" />

