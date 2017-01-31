<jsp:include page="partials/header.jsp" />
<h3>Benutzer Registrierung:</h3>
<%
    String benid = (String)request.getAttribute("erfolg");
    if(benid!=null){
        out.println("<div class='alert alert-success'>Benutzer mit id: "+ benid +" wurde Erfolgreich registriert.</div>");
    }

    benid = (String)request.getAttribute("error");
    if(benid!=null){
        out.println("<div class='alert alert-danger'>Benutzer mit id: "+ benid +" existiert bereits.</div>");
    }
%>

<form action="register" method="POST">
    <div class="form-group">
        <label for="inputId">Benutzer ID</label>
        <input type="number" class="form-control" id="inputId" name="id" placeholder="Benutzer ID">
    </div>
    <div class="form-group">
        <label for="inputLastname">Nachname</label>
        <input type="text" class="form-control" id="inputLastname" name="nachname" placeholder="Nachname">
    </div>
    <div class="form-group">
        <label for="inputFirstname">Vorname</label>
        <input type="text" class="form-control" id="inputFirstname" name="vorname" placeholder="Vorname">
    </div>
    <div class="form-group">
        <label for="inputType">Vorname</label>
        <select id="inputType" name="typ" class="form-control">
            <option value="kunde.jsp">Kunde</option>
            <option value="trainer.jsp">Trainer</option>
            <option value="leiter.jsp">Leiter</option>
        </select>
    </div>
    <div class="form-group">
        <label for="inputAddresse">Addresse</label>
        <input type="text" class="form-control" id="inputAddresse" name="addresse" placeholder="Addresse">
    </div>
    <div class="form-group">
        <label for="inputAddresse">Kennwort</label>
        <input type="password" class="form-control" id="inputKennwort" name="pass" placeholder="Kennwort">
    </div>

    <button type="submit" value="Register" name="action" class="btn btn-primary">Registrieren</button>
</form>


<jsp:include page="partials/footer.jsp" />