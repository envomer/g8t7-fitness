<%@ page import="modells.user" %><%
    user usr = (user) session.getAttribute("user");

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