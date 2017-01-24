<%@ page import="modells.*" %>

<div class="jumbotron">
    <h1>Willkommen zu BESTFitness!</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aliquid dignissimos dolorem eligendi est hic minus mollitia nam nisi numquam placeat, quod ratione reprehenderit rerum soluta, sunt ut voluptate voluptates.</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aliquid dignissimos dolorem eligendi est hic minus mollitia nam nisi numquam placeat, quod ratione reprehenderit rerum soluta, sunt ut voluptate voluptates.</p>
    
    <%if(session.getAttribute("user") == null){ %>
    	<p><a class="btn btn-primary btn-lg" href="register.jsp" role="button">Registrieren</a></p>
    <%} else {%>
    
    <%		
    	NotificationManager notificationManager = (NotificationManager) request.getServletContext().getAttribute(Constants.NOTIFICATION); 
 		user user = (user)session.getAttribute("user");
    	Notification notification = notificationManager.getNotificationbyUser(user.getBenutzerid());
 		
 		if(notification != null){%>
			<div class="alert alert-warning">
			  <strong>Warning!</strong> <%=notification.getMessage() %>
			</div>
 		<%
 		
 			notificationManager.loescheNotification(notification); //losch notification nach anzeigen
 		}
    
    }%>
    
</div>