<%@ page import="Daos.*" %>
<%@ page import="raum.*" %>
<%@ page import="modells.*" %>
<%@ page import="constants.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<jsp:include page="partials/header.jsp" />

<%
    user user = (user)session.getAttribute("user");

    if( user != null){
        NotificationManager notificationManager = (NotificationManager) request.getServletContext().getAttribute(Constants.NOTIFICATION);
        Notification notification = notificationManager.getNotificationbyUser(user.getBenutzerid());
        if( notification != null ) {
%>
        <div class="alert alert-warning">
            <strong>Warnung! </strong> <%=notification.getMessage() %>
        </div>
<%
        notificationManager.loescheNotification(notification); //losch notification nach anzeigen
        }
    }
%>

<div class="jumbotron">
    <h1>Willkommen zu BESTFitness!</h1>
    <div style="text-align: center">
        <img src="https://www.mcfit.com/uploads/pics/trainer-modul_16.png" alt="Homepage">
    </div>
    <p>
        Unter Fitness wird im Allgemeinen körperliches und oft auch geistiges Wohlbefinden verstanden. Fitness drückt das Vermögen aus, im Alltag leistungsfähig zu sein und Belastungen eher standzuhalten. Der Begriff ist insofern ungenau, als er als Modebegriff nicht klar definierbar ist und von verschiedenen Personen und Interessengruppen unterschiedlich interpretiert wird.
    </p>
    <p>
        Das Risiko für Zivilisationskrankheiten wie Herzinfarkt und Fettleibigkeit kann durch ein gezieltes Fitnesstraining verringert werden. Konzentrations- und Lernfähigkeit werden gesteigert. Menschen, die sich aktiv fit halten, gelten als gesünder und haben, statistisch gesehen, eine höhere Lebenserwartung.
    </p>
    <p>
        Zur Fitness von Körper und Geist gehört zum einen eine regelmäßige körperliche Betätigung, zum anderen eine gesunde, ausgewogene und nähr- wie ballaststoff­reiche Ernährung. Ungesunde Ergänzungsmittel (Doping, Anabolika) sind mit Fitness genauso wenig zu vereinbaren wie die Beschränkung auf reines Krafttraining.
    </p>
    
    <%if(user == null){ %>
    	<p><a class="btn btn-primary btn-lg" href="register.jsp" role="button">Registrieren</a></p>
    <% } %>
    
</div>

<jsp:include page="partials/footer.jsp" />