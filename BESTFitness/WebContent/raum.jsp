<jsp:include page="partials/header.jsp" />

<h1>Raum verwaltung.</h1>

<div class="form-container">
    <form action="/raum" method="POST" class="form">
        <div class="form-group">
            <label for="raum-name">Name</label>
            <input type="text" id="raum-name">
        </div>
        <div class="actions">
            <button class="btn" type="submit">Speichern</button>
        </div>
    </form>
</div>

<table>
    <thead>
        <tr>
            <th>Nr.</th>
            <th>Name</th>
            <th>Kapazitaet</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${raeume}" var="raum">
        ${raum.getRaumNr()}
    </c:forEach>
    </tbody>
</table>

</body>
</html>
