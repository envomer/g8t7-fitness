<jsp:include page="partials/header.jsp" />
<form action="loginservlet" method="POST">
	<table align="center">
		<tr align="right">
			<td align="right"><b>Benutzer Id: </b></td>
			<td><input type="text" autofocus
				placeholder="Enter Benutzername" name="txt_BenutzerID" required></td>
			<td><input type="submit" value="Anmelden" /></td>
		</tr>
		<tr>
			<td><b>Password</b></td>
			<td><input type="password" placeholder="Enter Password"
				name="txt_PWD" required></td>
			<td></td>
		</tr>
		<tr>
			<td colspan="3"><b> <%
				if(request.getParameter("loginerror") != null) out.println("Falsche Benutzer Id Oder Kennwort"); 
			%></b></td>
		</tr>
	</table>
</form>
<jsp:include page="partials/footer.jsp" />
