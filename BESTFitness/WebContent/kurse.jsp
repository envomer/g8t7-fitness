<%@ page import="modells.User" %><%
    User usr = (User) session.getAttribute("user");

    if( usr != null ) {
        %>
            <jsp:include page="<%=usr.getBenutzertyp()%>" />
        <%
    }
    else {
        %>
<jsp:include page="gast.jsp" />
<%
    }
%>