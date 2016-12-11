<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 50%;
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
 <h3> Benutzer Registrierung:</h3>
 
  <form action="register" method="POST" >

                                <%String benid = (String)request.getAttribute("erfolg"); 
                                if(benid!=null){
                                	out.println("Benutzer mit id: "+benid +" wurde Erfolgreich registriert.");
                                }  %>
 
                         
             <table id="erstellenB"    cellspacing="2" cellpadding="2">
  <tbody>
    <tr>
      <td align="right">Benutzer ID</td>
      <td>
        <input maxlength="50" name="id" size="45"  type="text" />
      </td>
    </tr>
  
    <tr>
      <td align="right">Nachname:</td>
      <td>
        <input maxlength="50" name="nachname" size="45"   type="text" />
      </td>
    </tr>
    <tr>
      <td align="right">Vorname:</td>
      <td>
        <input maxlength="50" name="vorname" size="45"  type="text" />
      </td>
    </tr>
    <tr>
      <td align="right">Typ:</td>
      <td>
      <select name="typ" align="right" style="zoom:1.5">
       <option value="kunde.jsp">Kunde</option>
       <option value="trainer.jsp">Trainer</option>
       <option value="leiter.jsp">Leiter</option>
        <select>
      </td>
    </tr>
    <tr>
    <td align="right">Adresse:</td>
    <td>
      <input maxlength="50" name="addresse" size="45"   type="text" />
    </td>
    </tr>
      <tr>
    <td align="right">Kennwort:</td>
    <td>
      <input maxlength="50" name="pass" size="45"   type="password" />
    </td>
    </tr>
    <tr>
      <td></td>
      <td>
        <input type="submit" value="Register"  name="action"  style="zoom:1.5"/>
         <input type="submit"  value="Zurruck"   name="action"  style="zoom:1.5"/> 
        </form>
  
      </td>
    </tr>
  </tbody>
</table>            
                         
                         
                         
                         
                         
</body>
</html>
                              
                              
