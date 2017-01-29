<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="Daos.managmentuser"%>
<%@ page import="Daos.KursManagement" %>
<%@ page import="raum.*" %>
<%@ page import="modells.*" %>
<%@ page import="util.MapUtil" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="constants.Constants" %>
<jsp:include page="partials/header.jsp" />
<h2>Statistiks</h2>

<%

	KursManagement km = (KursManagement)request.getServletContext().getAttribute(Constants.KURSDAO);
	ArrayList<Kurs> kurse = km.getKursList();
	
	Map<String, Integer> hochstBewertete = new HashMap<String, Integer>();
	Map<String, Integer> meistBewertete = new HashMap<String, Integer>();
	Map<String, Integer> meistBesuchte = new HashMap<String, Integer>();
	
	for(Kurs kurs : kurse){
		hochstBewertete.put(kurs.getKursName(), kurs.getRating());
		meistBewertete.put(kurs.getKursName(), kurs.getBewertung().size());
		meistBesuchte.put(kurs.getKursName(), kurs.getTeilnehmer().size());
	}
	
	hochstBewertete = MapUtil.sortByValue(hochstBewertete);
	meistBewertete = MapUtil.sortByValue(meistBewertete);
	meistBesuchte = MapUtil.sortByValue(meistBesuchte);

%>

<div class="row">
	<div class="col-sm-6 col-md-3">
		<div class="thumbnail">
			<div class="caption">
				<h3>Hochst bewertete Kurse</h3>

				<ol class="list-group">
					<% for(String key : hochstBewertete.keySet()){ %>
						<li class="list-group-item"><%=key%></li>
					<%} %>
				</ol>

			</div>
		</div>
	</div>

	<div class="col-sm-6 col-md-3">
		<div class="thumbnail">
			<div class="caption">
				<h3>Meist besuchte Kurse</h3>

				<ol class="list-group">
					<% for(String key : meistBesuchte.keySet()){ %>
						<li class="list-group-item"><%=key%></li>
					<%} %>
				</ol>

			</div>
		</div>
	</div>

	<div class="col-sm-6 col-md-3">
		<div class="thumbnail">
			<div class="caption">
				<h3>Meist bewertete Kurse</h3>

				<ol class="list-group">
					<% for(String key : meistBewertete.keySet()){ %>
						<li class="list-group-item"><%=key%></li>
					<%} %>
				</ol>

			</div>
		</div>
	</div>

</div>

<jsp:include page="partials/footer.jsp" />