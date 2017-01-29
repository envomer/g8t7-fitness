<jsp:include page="partials/header.jsp" />
<h3>Benutzer Registrierung:</h3>

<form action="register" method="POST">

	<%String benid = (String)request.getAttribute("erfolg"); 
                                if(benid!=null){
                                	out.println("Benutzer mit id: "+ benid +" wurde Erfolgreich registriert.");
                                }  %>


	<table id="erstellenB" cellspacing="2" cellpadding="2">
		<tbody>
			<tr>
				<td align="right">Benutzer ID</td>
				<td><input maxlength="50" name="id" size="45" type="text" required/></td>
			</tr>

			<tr>
				<td align="right">Nachname:</td>
				<td><input maxlength="50" name="nachname" size="45" type="text" />
				</td>
			</tr>
			<tr>
				<td align="right">Vorname:</td>
				<td><input maxlength="50" name="vorname" size="45" type="text" />
				</td>
			</tr>
			<tr>
				<td align="right">Typ:</td>
				<td><select name="typ" align="right" required>
						<option value="kunde.jsp">Kunde</option>
						<option value="trainer.jsp">Trainer</option>
						<option value="leiter.jsp">Leiter</option>
						</select></td>
			</tr>
			<tr>
				<td align="right">Adresse:</td>
				<td><input maxlength="50" name="addresse" size="45" type="text" />
				</td>
			</tr>
			<tr>
				<td align="right">Kennwort:</td>
				<td><input maxlength="50" name="pass" size="45" type="password" required/>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Register" name="action" /> <input
					type="submit" value="Zurueck" name="action" /></td>
			</tr>
		</tbody>
	</table>
</form>

<jsp:include page="partials/footer.jsp" />