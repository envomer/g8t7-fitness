<%@page import="Daos.managmentuser"%>
<%@ page import="Daos.KursManagement" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="raum.*" %>
<%@ page import="modells.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>
<%@ page import="constants.Constants" %>
<jsp:include page="partials/header.jsp" />

<h3 align="left">Neues Kurs einfuegen/aendern</h3>

<%
	managmentuser userDao = (managmentuser)request.getServletContext().getAttribute(Constants.USERDAO);
	RaumManagement raumDao = (RaumManagement)request.getServletContext().getAttribute(Constants.RAUMDAO);

	List<user> trainerList = userDao.getTrainerListe();
	List<Raum> raumList = raumDao.getRaumList();
%>

<form action="KursErstellt" method="POST">
<table class="table" id="erstellen" border="0" cellspacing="2" cellpadding="2">
  <tbody>
    <tr>
      <td align="right">Kurs name:</td>
      <td>
        <input maxlength="50" name="kursname" size="45" type="text" required/>
      </td>
    </tr>
    <tr>
      <td align="right">Datum:</td>
      <td>
        <input maxlength="50" name="datum" size="45" type="date" value="01.01.2017" required/> 
      </td>
    </tr>  
    <tr>
      <td align="right">Time:</td>
      <td>
        <input maxlength="5" name="timevon" size="5" type="time" value="12:00" required/>   bis   
        <input maxlength="5" name="timebis" size="5" type="time" value="13:00" required/>
      </td>
    </tr>
    <tr>
      <td align="right">Raum:</td>
      <td>
      <select name="raum">
      	<%
      		for(Raum raum : raumList){
      			out.print("<option>" + raum.getRaumNr() + "</option>");
      		}
      	%>
      </select>
      </td>
    </tr>
    <tr>
    <td align="right">Trainer:</td>
    <td>
      <select name="trainer">
      	<%
      		for(user trainer : trainerList){
      			out.print("<option>" + trainer.getBenutzerid() + "</option>");
      		}
      	%>
      </select>
    </td>
    </tr>
    <tr>
      <td></td>
      <td>
        <input type="submit" value="Kurs erstellen" class="btn btn-primary"/>
      </td>
    </tr>
  </tbody>
</table>
</form>

<br>
<p align='center'>
<table class="table" width='100%' border="2" id="kurs">
	<tr>	
		<th>Kurs Name </th>
		<th>Datum </th>
		<th>Trainer name</th>
		<th>Max Teilnehmer</th>
		<th>Teilnehmer</th>
		<th>Raum Nr</th>
		<th>Anzeigen </th>
		<th>Andern</th>
		<th>Kommentare</th>
		<th>Loeschen</th>
	</tr>

<%
KursManagement km = (KursManagement)request.getServletContext().getAttribute(Constants.KURSDAO);
ArrayList<Kurs> kurse = km.getKursList();
Collections.sort(kurse);
Collections.reverse(kurse);
SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");

for (int i = 0; i < kurse.size(); i++) { 
	String uhrzeit = kurse.get(i).getKursUhrVon(); 
	uhrzeit += " - ";
	uhrzeit += kurse.get(i).getKursUhrBis();
%>

<tr>
<td align="right"> <%= kurse.get(i).getKursName() %> </td>
<td align="right"> <%=sdf.format(kurse.get(i).getKursDatum()) %> <%= uhrzeit %> </td>
<td align="right"> <%= kurse.get(i).getKursTrainer() %> </td>
<td align="right"> <%= kurse.get(i).getTeilnehmerAnzahl() %> </td>
<td align="right"> <%= kurse.get(i).getTeilnehmer().size() %> </td>
<td align="right"> <%= kurse.get(i).getKursRaum() %> </td>
<td align="right">
	<form action="kurse" method="POST">
		<input type="hidden" name="action" value="anzeigen"></input>
		<input type="hidden" name="kursid" value=<%=kurse.get(i).getKursID() %>></input>
		<input type="submit" class="btn btn-default btn-sm" value="Anzeigen"/>
	</form>
</td><td align="right">
	<form action="kurse" method="POST">
		<input type="hidden" name="action" value="comments"></input>
		<input type="hidden" name="kursid" value=<%=kurse.get(i).getKursID() %>></input>
		<input type="submit" class="btn btn-default btn-sm" value="Komentare"/>
	</form>
</td><td align="right">
	<form action="KursBearbeiten" method="GET">
		<input type="hidden" name="action" value="andern"></input>
		<input type="hidden" name="kursid" value=<%=kurse.get(i).getKursID() %>></input>
		<input type="submit" class="btn btn-default btn-sm" value="Aendern"/>
	</form>
</td>
<td align="right">
	<form action="kurse" method="POST">
		<input type="hidden" name="action" value="loschen"></input>
		<input type="hidden" name="kursid" value=<%=kurse.get(i).getKursID() %>></input>
		<input type="submit" class="btn btn-default btn-sm" value="Loschen"/>
	</form>
</td>
</tr>
<%	
}
%>
</table>
<% if(request.getAttribute("teilnehmer") != null){%>
<div>
<table class="table" width='100%' border="2" id="kurs">
	<tr>	
		<th>Benutzername</th>
	</tr>
	
	<% 
	Kurs teilnehmer = (Kurs)request.getAttribute("teilnehmer");
	for (int i = 0; i < teilnehmer.getTeilnehmer().size(); i++) { 	
	%><tr>
		<td align="right"> <%= teilnehmer.getTeilnehmer().get(i) %> </td>
		</tr>
	<%} %>
	</table>
</div>

<%}%>

<% if(request.getAttribute("comments") != null){%>
<div>
<table class="table" width='100%' border="2" id="kurs">
	<tr>	
		<th>Comments</th>
	</tr>
	
	<% 
	Kurs comments = (Kurs)request.getAttribute("comments");
	for (int i = 0; i < comments.getCommentare().size(); i++) { 	
	%><tr>
		<td align="right"> <%= comments.getCommentare().get(i) %> </td>
		</tr>
	<%} %>
	</table>
</div>

<%}%>

<jsp:include page="partials/footer.jsp" />