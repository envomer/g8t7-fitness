<jsp:include page="partials/header.jsp" />
<form action="loginservlet" method ="POST">
    <table align="center" >
        <tr align="right">
            <td align="right"><b>Benutzer Id: </b></td>
            <td><input type="number" autofocus placeholder="Enter Benutzername" name="txt_BenutzerID" required></td>
            <td><input type="submit" value="Anmelden"/></td>
        </tr>
        <tr>
            <td><b>Password</b></td>
            <td><input type="password" placeholder="Enter Password" name="txt_PWD" required></td>
            <td></td>
</tr>
<tr>
    <td colspan="3"><b> <%String ant = (String)request.getAttribute("loginseite"); if(ant!=null)out.println(ant); %></b></td>
</tr>
</table>
</form>
<jsp:include page="partials/footer.jsp" />
