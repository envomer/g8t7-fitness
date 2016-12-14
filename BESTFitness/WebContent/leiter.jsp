<%@ page import="Daos.KursManagement" %>
<%@ page import="modells.Kurs" %>
<%@ page import="java.util.ArrayList" %>
<jsp:include page="partials/header.jsp" />

<h3 align="left">Neues Kurs einfuegen/aendern</h3>

<form action="KursErstellt" method="POST">
<table class="table" id="erstellen" border="0" cellspacing="2" cellpadding="2">
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
        <input maxlength="50" name="datum" size="45" type="date" value="01.01.2017" /> 
      </td>
    </tr>  
    </tr>
       <tr>
      <td align="right">Time:</td>
      <td>
        <input maxlength="5" name="timevon" size="5" type="time" value="12:00"/>   bis   <input maxlength="5" name="timebis" size="5" type="time" value="13:00"/>
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
<table class="table" id="erstellenB" border="0"  style="display:none" cellspacing="2" cellpadding="2">
  <tbody>
    <tr>
      <td align="right">Kurs name:</td>
      <td>
        <input maxlength="50" name="kursname" size="45" value="Hapkido" type="text" />
      </td>
    </tr>
    <tr>
      <td align="right">Datum:</td>
      <td>
        <input maxlength="50" name="datum" size="45" type="date" value="20.10.2016" /> 
      </td>
    </tr>  
    </tr>
       <tr>
      <td align="right">Time:</td>
      <td>
        <input maxlength="5" name="time" size="5" type="time" value="10:00"/>   bis   <input maxlength="5" name="time" size="5" type="time" value="11:00"/>
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
      <input maxlength="50" name="trainer" size="45"  value="Trainer" type="text" />
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
<table class="table" width='100%' border="2" id="kurs">
<tr>

<th>Kurs Name </th>
<th>Uhrzeit </th>
<th>Trainer name</th>
<th>Anzahl der teilnehmer </th>
<th>Raum Nr</th>
<th>Anzeigen </th>
<th>Andern</th>
<th>Löschen</th>
</tr>

<%
KursManagement km = new KursManagement("kurs.txt");
ArrayList<Kurs> kurse = km.getKursList();

for (int i = 0; i < kurse.size(); i++) { 
String uhrzeit = kurse.get(i).getKursUhrVon(); 
uhrzeit += " - ";
uhrzeit += kurse.get(i).getKursUhrBis();
%>

<tr>
<td align="right"> <%= kurse.get(i).getKursName() %> </td>
<td align="right"> <%= uhrzeit %> </td>
<td align="right"> <%= kurse.get(i).getKursTrainer() %> </td>
<td align="right"> <%= kurse.get(i).getTeilnehmerAnzahl() %> </td>
<td align="right"> <%= kurse.get(i).getKursRaum() %> </td>
<td align="right"><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunctionB()"></td>
</tr>
<%	
}
%>
<tr>
<td align="right">Aerobic</td>
<td align="right">12:00-13:00</td>
<td align="right">Trainer</td>
<td align="right">10</td>
<td align="right">1 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Badminton</td>
<td align="right">15:00-16:00</td>
<td align="right">Trainer</td>
<td align="right">13</td>
<td align="right">2 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Hockey</td>
<td align="right">17:00-18:00</td>
<td align="right">Trainer</td>
<td align="right">15</td>
<td align="right">3 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Karate</td>
<td align="right">19:00-20:00</td>
<td align="right">Trainer</td>
<td align="right">10</td>
<td align="right">4 </td>
<td align="right"><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunctionB()"></td>

</tr>
<tr>
<td align="right">Hapkido</td>
<td align="right">10:00-11:00</td>
<td align="right">Trainer</td>
<td align="right">5</td>
<td align="right">5 </td>
<td align="right"><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunction()"></td>
<td align="right"><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunctionC()"></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
</table>

<table class="table" width='100%' id="kursB" style=" display:none; visibility:hidden" border="2">
<tr>

<th>Kurs Name </th>
<th>Uhrzeit </th>
<th>Trainer name</th>
<th>Anzahl der teilnehmer </th>
<th>Raum Nr</th>
<th>Anzeigen </th>
<th>Andern</th>
<th>Löschen</th>
</tr>
<%
for (int i = 0; i < kurse.size(); i++) { 
String uhrzeit = kurse.get(i).getKursUhrVon(); 
uhrzeit += " - ";
uhrzeit += kurse.get(i).getKursUhrBis();%>

<tr>
<td align="right"> <%= kurse.get(i).getKursName() %> </td>
<td align="right"> <%= uhrzeit %> </td>
<td align="right"> <%= kurse.get(i).getKursTrainer() %> </td>
<td align="right"> <%= kurse.get(i).getTeilnehmerAnzahl() %> </td>
<td align="right"> <%= kurse.get(i).getKursRaum() %> </td>

<td align="right"><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunctionB()"></td>
</tr>
<%	
}
%>
<tr>
<td align="right">Aerobic</td>
<td align="right">12:00-13:00</td>
<td align="right">Trainer</td>
<td align="right">10</td>
<td align="right">1 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Badminton</td>
<td align="right">15:00-16:00</td>
<td align="right">Trainer</td>
<td align="right">13</td>
<td align="right">2 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>
<tr>
<td align="right">Hockey</td>
<td align="right">17:00-18:00</td>
<td align="right">Trainer</td>
<td align="right">15</td>
<td align="right">3 </td>
<td align="right"><form><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>

</tr>

<tr>
<td align="right">Hapkido</td>
<td align="right">10:00-11:00</td>
<td align="right">Trainer</td>
<td align="right">5</td>
<td align="right">5 </td>
<td align="right"><input type=submit value="Anzeigen" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunction()"></td>
<td align="right"><input type=submit value="Aendern" style="font-size : 40px; width: 100%; height: 100px;" onclick="myFunctionC()"></td>
<td align="right"><form><input type=submit value="loeschen" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
</table>

Teilnehmer der Kurs:
<table class="table" width='100%' border="2" id="teilahme" style="visibility:hidden">
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
<td align="right">Rabit</td>
<td align="right">Ljatifi</td>

<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
<tr>
<td align="right">Omer</td>
<td align="right">Mohamed Ali</td>
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
<td align="right">Sanan</td>
<td align="right">Ahmadzada</td>
<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
<tr>
<td align="right">Yunus Emre</td>
<td align="right">Kanitoglu</td>

<td align="right"><form><input type=submit value="Abmelden" style="font-size : 40px; width: 100%; height: 100px;"></form></td>
</tr>
<tr>
<td align="right">Rabit</td>
<td align="right">Ljatifi</td>

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
<jsp:include page="partials/footer.jsp" />