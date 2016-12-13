<%@ page language="java" contentType="text/html; charset=UTF-8"
   import="modells.user" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Leiter</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
<table>
<tr>
<td>
<h1 align="center">
<%
//user b =(user)request.getAttribute("loginseite");

//out.print("Wilkommen Trainer: "+b.getBenutzernachname());
%>
</h1>
</td>
<td>
  <form action="NewFile.jsp"><input type="submit"  value="Abmelden"   name="action"  style="zoom:1.5"/> </form>
  </td>
  </tr>
 </table> 
<br>
<h2>Datum:  <input type="text" value="20/10/2016" style="font-size: 24px;"></input></h2>
<p align='center'>
<table width='100%' border="2" id="kurs">
<tr>

<th>Kurs Name </th>
<th>Uhrzeit </th>
<th>Trainer name</th>
<th>Anzahl der teilnehmer </th>
<th>Raum Nr</th>
<th>Anzeigen </th>
<th>Loeschen</th>
</tr>
<tr>
<td align="right">Aerobic</td>
<td align="right">12:00-13:00</td>
<td align="right">Trainer</td>
<td align="right">10</td>
<td align="right">1 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Absagen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Badminton</td>
<td align="right">15:00-16:00</td>
<td align="right">Trainer</td>
<td align="right">13</td>
<td align="right">2 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Absagen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Hockey</td>
<td align="right">17:00-18:00</td>
<td align="right">Trainer</td>
<td align="right">15</td>
<td align="right">3 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Absagen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Karate</td>
<td align="right">19:00-20:00</td>
<td align="right">Trainer</td>
<td align="right">10</td>
<td align="right">4 </td>
<td align="right"><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></td>
<td align="right"><input type=submit value="Absagen" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunctionB()"></td>

</tr>
<tr>
<td align="right">Hapkido</td>
<td align="right">10:00-11:00</td>
<td align="right">Trainer</td>
<td align="right">5</td>
<td align="right">5 </td>
<td align="right"><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunction()"></td>
<td align="right"><form><input type=submit value="Absagen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
</table>

<table width='100%' id="kursB" style=" display:none; visibility:hidden" border="2">
<tr>

<th>Kurs Name </th>
<th>Uhrzeit </th>
<th>Trainer name</th>
<th>Anzahl der teilnehmer </th>
<th>Raum Nr</th>
<th>Anzeigen </th>

<th>Loeschen</th>
</tr>
<tr>
<td align="right">Aerobic</td>
<td align="right">12:00-13:00</td>
<td align="right">Trainer</td>
<td align="right">10</td>
<td align="right">1 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Absagen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Badminton</td>
<td align="right">15:00-16:00</td>
<td align="right">Trainer</td>
<td align="right">13</td>
<td align="right">2 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Absagen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Hockey</td>
<td align="right">17:00-18:00</td>
<td align="right">Trainer</td>
<td align="right">15</td>
<td align="right">3 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Absagen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Karate</td>
<td align="right">19:00-20:00</td>
<td align="right">Trainer</td>
<td align="right">10</td>
<td align="right">4 </td>
<td align="right"><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></td>
<td align="right"><h5>Kurs abgesagt</h5></td>

</tr>
<tr>
<td align="right">Hapkido</td>
<td align="right">10:00-11:00</td>
<td align="right">Trainer</td>
<td align="right">5</td>
<td align="right">5 </td>
<td align="right"><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunction()"></td>
<td align="right"><form><input type=submit value="Absagen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
</table>

Teilnehmer der Kurs:
<table width='100%' border="2" id="teilahme" style="visibility:hidden">
<tr>

<th>Vorname</th>
<th>Nachname </th>

<th>Abmelden </th>
</tr>
<tr>
<td align="right">Senan</td>
<td align="right">Ahmadzada</td>
<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
<tr>
<td align="right">Yunus Emre</td>
<td align="right">Kanitoglu</td>

<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
<tr>
<td align="right">Omer</td>
<td align="right">Mohamed Ali</td>

<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
<tr>
<td align="right">Rabit</td>
<td align="right">Ljatifi</td>
<td align="right"><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunctionA()"></td>
</tr>
<tr>
<td align="right">Max</td>
<td align="right">Musterman</td>

<td align="right"><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></td>
</tr>
</table>
<table width='100%' border="2" id="teilahmeA" style="visibility:hidden">
<tr>
<th>Vorname</th>
<th>Nachname </th>

<th>Abmelden </th>
</tr>
<tr>
<td align="right">Senan</td>
<td align="right">Ahmadzada</td>
<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
<tr>
<td align="right">Yunus Emre</td>
<td align="right">Kanitoglu</td>

<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
<tr>
<td align="right">Omer</td>
<td align="right">Mohamed Ali</td>

<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>

<tr>
<td align="right">Max</td>
<td align="right">Musterman</td>

<td align="right"><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></td>
</tr>
</table>

<script>
function myFunction() {
    var x = document.getElementById('teilahme');
    if (x.style.visibility === 'hidden') {
        x.style.visibility = 'visible';
    } 
}

</script>
<script>
function myFunctionA() {
    var x = document.getElementById('teilahmeA');
    var xx = document.getElementById('teilahme');
    if (xx.style.visibility === 'visible') {
    	 xx.style.display = 'none';
        x.style.visibility = 'visible';
       
    } 
}

</script>
<script>
function myFunctionB() {
	
    var x = document.getElementById('kurs');
    var xx = document.getElementById('kursB');
  
    	 x.style.display = 'none';
        xx.style.display = 'table';
        xx.style.visibility = 'visible';

}

</script>
<script>
function myFunctionC() {
     var x = document.getElementById('erstellen');
    var xx = document.getElementById('erstellenB');
          x.style.display = 'none';
        xx.style.display = 'table';
        xx.style.visibility = 'visible';

}

</script>
</body>
</html>

