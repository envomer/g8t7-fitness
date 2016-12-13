<%@ page language="java" contentType="text/html; charset=UTF-8" import="modells.user"
     pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
user b =(user)request.getAttribute("loginseite");

out.print("Wilkommen Kunde: "+b.getBenutzernachname());
%>
</h1>
</td>
<td>
  <form action="NewFile.jsp"><input type="submit"  value="Abmelden"   name="action"  style="zoom:1.5"/> </form>
  </td>
  </tr>
 </table> 
<p align='center'>
<h4 id="anmelden" style="visibility:hidden; display:none">Du bist erfolgreich angemeldet</h4>
<h4 id="abmelden" style="visibility:hidden; display:none">Du bist  abgemeldet</h4>
<table width='100%' id="table1" border="2">
<tr>
<th>Kurs nr</th>
<th>Tag </th>
<th>Uhrzeit </th>
<th>Trainer </th>
<th>Anmeldung </th>
</tr>
<tr>
<td align="right">Kurs 1</td>
<td align="right">SONTAG 12/10/2016 </td>
<td align="right">12:00-13:00</td>
<td align="right">Yunus</td>
<td align="right"><input type=submit value="Anmelden" style="width:100%"></td>
</tr>
<tr>
<td align="right">Kurs 2</td>
<td align="right">MONTAG 13/10/2016 </td>
<td align="right">15:00-16:00</td>
<td align="right">Gerhard</td>
<td align="right"><input type=submit value="Anmelden" onclick="myFunctionA()" style="width: 100%" ></td>
</tr>
</table>
</p>

<p align='center'>
<table width='100%' border="2"  id="table2" style="visibility:hidden">
<tr>
<th>Kurs nr</th>
<th>Tag </th>
<th>Uhrzeit </th>
<th>Trainer </th>
<th>Anmeldung </th>
</tr>
<tr>
<td align="right">Kurs 1</td>
<td align="right">SONTAG 12/10/2016 </td>
<td align="right">12:00-13:00</td>
<td align="right">Yunus</td>
<td align="right"><input type=submit value="Anmelden" style="width:100%"></td>
</tr>
<tr>
<td align="right">Kurs 2</td>
<td align="right">MONTAG 13/10/2016 </td>
<td align="right">15:00-16:00</td>
<td align="right">Gerhard</td>
<td align="right"><input type=submit value="Abmelden" onclick="myFunctionB()" style="width: 100%" ></td>
</tr>
</table>
</p>

<script>
function myFunctionA() {
     var x = document.getElementById('table1');
    var xx = document.getElementById('table2');
    var a = document.getElementById('anmelden');
    var aa = document.getElementById('abmelden');
  
         x.style.display = 'none';
         xx.style.display = 'table';
        xx.style.visibility = 'visible';
        aa.style.display = 'none';
        a.style.display = 'table';
        a.style.visibility = 'visible';
        

}
</script>
<script type="text/javascript">
function myFunctionB() {
    var x = document.getElementById('table1');
   var xx = document.getElementById('table2');
   var a = document.getElementById('anmelden');
   var aa = document.getElementById('abmelden');

        
        
        xx.style.display = 'none';
        x.style.display = 'table';
       x.style.visibility = 'visible';
       a.style.display = 'none';
       aa.style.display = 'table';
       aa.style.visibility = 'visible';
       

}

</script>
</body>
</html>

