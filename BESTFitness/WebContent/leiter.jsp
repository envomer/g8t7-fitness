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

//out.print("Wilkommen Leiter: "+b.getBenutzernachname());
%>
</h1>
</td>
<td>
  <form action="NewFile.jsp"><input type="submit"  value="Abmelden"   name="action"  style="zoom:1.5"/> </form>
  </td>
  </tr>
 </table> 
<h3 align="left">Neues Kurs einfuegen/aendern</h3>

<form action="KursErstellt" method="POST">
<table id="erstellen" border="0" cellspacing="2" cellpadding="2">
  <tbody>
    <tr>
      <td align="right">Kurs name:</td>
      <td>
        <input maxlength="50" name="kursname" size="45" type="text" />
      </td>
    </tr>
  
    <tr>
      <td align="right">Datum:</td>
      <td>
        <input maxlength="50" name="datum" size="45" type="date" />
      </td>
    </tr>
    <tr>
      <td align="right">Time:</td>
      <td>
        <input maxlength="50" name="time" size="45" type="time" />   bis   <input maxlength="50" name="time" size="45" type="time" />
      </td>
    </tr>
    <tr>
      <td align="right">Raum:</td>
      <td>
        <input maxlength="50" name="raum" size="45" type="text" />
      </td>
    </tr>
    <tr>
      <td align="right">Max. Teilnahmeranzahl:</td>
      <td>
        <input maxlength="50" name="teilnameanzahl" size="7" type="text" />
      </td>
    </tr>
    <tr>
    <td align="right">Trainer:</td>
    <td>
      <input maxlength="50" name="trainer" size="45" type="text" />
    </td>
    </tr>
    <tr>
      <td></td>
      <td>
        <input type="submit" value="Kurs erstellen"  style="font-size : 60px;  height: 100px;"/>
      </td>
    </tr>
  </tbody>
</table>
</form>

<form action="NewFile.jsp" method="POST">
<table id="erstellenB" border="0"  style="display:none" cellspacing="2" cellpadding="2">
  <tbody>
    <tr>
      <td align="right">Kurs name:</td>
      <td>
        <input maxlength="50" name="kursname" size="45" value="Kurs E" type="text" />
      </td>
    </tr>
  
    <tr>
      <td align="right">Datum:</td>
      <td>
        <input maxlength="50" name="datum" size="45"  value="10:00-11:00" type="date" /> 
      </td>
    </tr>
     <tr>
      <td align="right">Time:</td>
      <td>
        <input maxlength="50" name="time" size="45" type="time" />   bis   <input maxlength="50" name="time" size="45" type="time" />
      </td>
    </tr>
    
    <tr>
      <td align="right">Raum:</td>
      <td>
        <input maxlength="50" name="raum" size="45" value="5" type="text" />
      </td>
    </tr>
    <tr>
      <td align="right">Max. Teilnahmeranzahl:</td>
      <td>
        <input maxlength="50" name="teilnameanzahl" size="7"  value="5"type="text" />
      </td>
    </tr>
    <tr>
    <td align="right">Trainer:</td>
    <td>
      <input maxlength="50" name="trainer" size="45"  value="Gledi" type="text" />
    </td>
    </tr>
    <tr>
      <td></td>
      <td>
        <input type="submit" value="Kurs erstellen"  style="font-size : 60px;  height: 100px;"/>
      </td>
    </tr>
  </tbody>
</table>
</form>


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
<th>Aendern</th>
<th>Loeschen</th>
</tr>
<tr>
<td align="right">Kurs A</td>
<td align="right">12:00-13:00</td>
<td align="right">Yunus</td>
<td align="right">10</td>
<td align="right">1 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Kurs B</td>
<td align="right">15:00-16:00</td>
<td align="right">Yunus</td>
<td align="right">13</td>
<td align="right">2 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Kurs C</td>
<td align="right">17:00-18:00</td>
<td align="right">Yunus</td>
<td align="right">15</td>
<td align="right">3 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Kurs D</td>
<td align="right">19:00-20:00</td>
<td align="right">Yunus</td>
<td align="right">10</td>
<td align="right">4 </td>
<td align="right"><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunctionB()"></td>

</tr>
<tr>
<td align="right">Kurs E</td>
<td align="right">10:00-11:00</td>
<td align="right">Yunus</td>
<td align="right">5</td>
<td align="right">5 </td>
<td align="right"><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunction()"></td>
<td align="right"><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunctionC()"></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
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
<th>Aendern</th>
<th>Loeschen</th>
</tr>
<tr>
<td align="right">Kurs A</td>
<td align="right">12:00-13:00</td>
<td align="right">Yunus</td>
<td align="right">10</td>
<td align="right">1 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Kurs B</td>
<td align="right">15:00-16:00</td>
<td align="right">Yunus</td>
<td align="right">13</td>
<td align="right">2 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Kurs C</td>
<td align="right">17:00-18:00</td>
<td align="right">Yunus</td>
<td align="right">15</td>
<td align="right">3 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>

<tr>
<td align="right">Kurs E</td>
<td align="right">10:00-11:00</td>
<td align="right">Yunus</td>
<td align="right">5</td>
<td align="right">5 </td>
<td align="right"><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunction()"></td>
<td align="right"><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunctionC()"></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
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
<td align="right">SENAN</td>
<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
<tr>
<td align="right">Yunus</td>
<td align="right">Yunus</td>

<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
<tr>
<td align="right">ABC</td>
<td align="right">CDF</td>

<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
<tr>
<td align="right">DFW</td>
<td align="right">FDW</td>
<td align="right"><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunctionA()"></td>
</tr>
<tr>
<td align="right">ADMIN</td>
<td align="right">ADMIN</td>

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
<td align="right">SENAN</td>
<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
<tr>
<td align="right">Yunus</td>
<td align="right">Yunus</td>

<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
<tr>
<td align="right">ABC</td>
<td align="right">CDF</td>

<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>

<tr>
<td align="right">ADMIN</td>
<td align="right">ADMIN</td>

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