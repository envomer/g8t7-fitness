<jsp:include page="partials/header.jsp" />

<% if (request.getParameter("loginerror") != null) { %>
    <div class="alert alert-danger">Falsches Passwort oder Benutzer ID.</div>
<% } %>

<form action="loginservlet" method="POST">
    <div class="form-group">
        <label for="inputId">Benutzer ID</label>
        <input type="text" class="form-control" id="inputId" autofocus name="txt_BenutzerID" placeholder="Benutzer ID">
    </div>
    <div class="form-group">
        <label for="inputPassword">Passwort</label>
        <input type="password" class="form-control" id="inputPassword" name="txt_PWD" placeholder="Benutzer ID">
    </div>
    <button type="submit" value="Anmelden" name="action" class="btn btn-primary">Anmelden</button>
</form>

<jsp:include page="partials/footer.jsp" />
