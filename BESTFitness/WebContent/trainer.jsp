<%@page import="Daos.managmentuser"%>
<%@ page import="Daos.KursManagement" %>
<%@ page import="raum.*" %>
<%@ page import="modells.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>
<%@ page import="constants.Constants" %>
<%@page import="java.text.SimpleDateFormat"%>

<jsp:include page="partials/header.jsp" />
<p align='center'>
<div class="table-responsive">
    <table width='100%' id="kurs" class="table table-bordered">
	<tr>	
		<th>Kurs Name </th>
		<th>Datum </th>
		<th>Trainer name</th>
		<th>Max Teilnehmer</th>
		<th>Teilnehmer Anzahl</th>
		<th>Raum Name</th>
		<th>Kommentare</th>
		<th>Teilnehmer </th>
		<th>Absagen</th>
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
<td align="right"> <%= kurse.get(i).getTeilnehmerAnzahl() %></td>
<td align="right"> <%= kurse.get(i).getTeilnehmer().size() %></td>
<td align="right"> <%= kurse.get(i).getKursRaum() %> </td>
<td align="right">
	<form action="kurse" method="POST">
		<input type="hidden" name="action" value="comments" />
		<input type="hidden" name="kursid" value=<%=kurse.get(i).getKursID() %> />
		<input type="submit" class="btn btn-default btn-sm" value="Anzeigen"/>
	</form>
</td>
<td align="right">
	<form action="kurse" method="POST">
		<input type="hidden" name="action" value="anzeigen" />
		<input type="hidden" name="kursid" value=<%=kurse.get(i).getKursID() %> />
		<input type="submit" class="btn btn-default btn-sm" value="Anzeigen"/>
	</form>
</td>
<td align="right">
	<form action="kurse" method="POST">
		<input type="hidden" name="action" value="loschen" />
		<input type="hidden" name="kursid" value=<%=kurse.get(i).getKursID() %> />
		<input type="submit" class="btn btn-default btn-sm" value="Absagen"/>
	</form>
</td>
</tr>
<%	
}
%>
</table>
</div>


<% if(request.getAttribute("teilnehmer") != null){%>
<div class="table-responsive">
<table class="table table-bordered" width='100%' border="2" id="kurs">
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
<div class="table-responsive">
<table class="table table-bordered" width='100%' border="2" id="kurs">
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
