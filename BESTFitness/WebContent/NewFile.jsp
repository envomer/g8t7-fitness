<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
div.transbox {
 	width: 400px;
    height: 220px;
    margin: 30px;
    background-color: #ffffff;
    border: 1px solid black;
    opacity: 0.6;
    filter: alpha(opacity=60); /* For IE8 and earlier */
}
div.background {
    background: url(klematis.jpg) repeat;
    border: 2px solid black;
}
div.transbox p {
    margin: 5%;
    font-weight: bold;
    color: #000000;
}
</style>
<body>

<form action="loginservlet" method ="POST">
	<table align="right" > 
		<tr align="right">
			<td align="right"><b>Benutzer Id: </b></td>
    		<td><input type="text" placeholder="Enter Benutzername" name="txt_BenutzerID" required></td>
    		<td><input type="submit" value="Anmelden"/></td>	
		</tr>
		<tr>
    		<td><b>Password</b></td>
    		<td><input type="password" placeholder="Enter Password" name="txt_PWD" required></td>
 			<td></form><form action="register.jsp"><input type="submit" value="Registrieren"/></form></td>
		</tr>
</table>
<h1>BESTFitness</h1>

</body>
</html>