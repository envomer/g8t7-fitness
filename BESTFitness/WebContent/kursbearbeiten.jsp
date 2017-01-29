<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Daos.managmentuser"%>
<%@ page import="Daos.KursManagement" %>
<%@ page import="raum.*" %>
<%@ page import="modells.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="constants.Constants" %>
<jsp:include page="partials/header.jsp" />

<h3 align="left">Kurs Andern</h3>

<%

	Kurs kurs = (Kurs)request.getAttribute("kurs");
	SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
	String strDatum  = sdf.format(kurs.getKursDatum());

	managmentuser userDao = (managmentuser)request.getServletContext().getAttribute(Constants.USERDAO);
	RaumManagement raumDao = (RaumManagement)request.getServletContext().getAttribute(Constants.RAUMDAO);
	
	List<user> trainerList = userDao.getTrainerListe();
	List<Raum> raumList = raumDao.getRaumList();

%>

<form action="KursBearbeiten" method="POST">
<table class="table" id="erstellen" border="0" cellspacing="2" cellpadding="2">
  <tbody>
    <tr>
      <td align="right">Kurs name:</td>
      <td>
        <input maxlength="50" value=<%=kurs.getKursName() %> name="kursname" size="45" type="text" required/>
      </td>
    </tr>
    <tr>
      <td align="right">Datum:</td>
      <td>
        <input maxlength="50" value=<%=strDatum %> name="datum" size="45" type="date" required/> 
      </td>
    </tr>  
    <tr>
      <td align="right">Time:</td>
      <td>
        <input maxlength="5" name="timevon" size="5" type="time" value=<%=kurs.getKursUhrVon() %> required/>   bis   
        <input maxlength="5" name="timebis" size="5" type="time" value=<%=kurs.getKursUhrBis() %> required/>
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
      	<input type="hidden" value=<%=kurs.getKursID() %> name="kursid"/>
        <input type="submit" value="Kurs aktualisieren" class="btn btn-primary"/>
      </td>
    </tr>
  </tbody>
</table>
</form>

<jsp:include page="partials/footer.jsp" />