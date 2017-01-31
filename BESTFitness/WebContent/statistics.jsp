<%@page import="Daos.managmentuser"%>
<%@ page import="Daos.KursManagement" %>
<%@ page import="raum.*" %>
<%@ page import="modells.*" %>
<%@ page import="util.MapUtil" %>
<%@ page import="constants.Constants" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<jsp:include page="partials/header.jsp" />

<h2>Statistiken</h2>

<%

    statistics stats = new statistics();
	KursManagement km = (KursManagement)request.getServletContext().getAttribute(Constants.KURSDAO);
	ArrayList<Kurs> kurse = km.getKursList();

	Map<String, Integer> hochstBewertete = new HashMap<String, Integer>();
	Map<String, Integer> meistBewertete = new HashMap<String, Integer>();
	Map<String, Integer> meistBesuchte = new HashMap<String, Integer>();

    String start = request.getParameter("anfang");
    String ende = request.getParameter("ende");
    SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
    Date startDate = null;
    Date endDate = null;

    if( start != null ) {
        startDate = stats.parseDate(start);
        start = sdf.format(startDate);
    }
    else {
        start = "01.01.2017";
    }

    if( ende != null ) {
        endDate = stats.parseDate(ende);
        ende = sdf.format(endDate);
    }
    else {
        ende = sdf.format(new Date());
    }

	for(Kurs kurs : kurse){

        if( startDate != null && startDate.compareTo(kurs.getKursDatum()) != -1 ) {
            continue;
        }

        if( endDate  != null && endDate.compareTo(kurs.getKursDatum()) != 1 ) {
            continue;
        }

		hochstBewertete.put(kurs.getKursName(), kurs.getRating());
		meistBewertete.put(kurs.getKursName(), kurs.getBewertung().size());
		meistBesuchte.put(kurs.getKursName(), kurs.getTeilnehmer().size());
	}

	hochstBewertete = MapUtil.sortByValue(hochstBewertete);
	meistBewertete = MapUtil.sortByValue(meistBewertete);
	meistBesuchte = MapUtil.sortByValue(meistBesuchte);


%>

<div class="row">
    <div class="col-md-12">
        <form action="" method="GET">
            <div class="form-group">
                <label for="inputStart">Anfang</label>
                <input value="<% out.print(start); %>" type="text" name="anfang" class="form-control" id="inputStart" placeholder="Anfang">
            </div>
            <div class="form-group">
                <label for="inputEnd">Ende</label>
                <input value="<% out.print(ende); %>" type="text" name="ende" class="form-control" id="inputEnd" placeholder="Ende">
            </div>
            <button type="submit" class="btn btn-primary">Anzeigen</button>
        </form>
    </div>
</div>

<div class="row">
	<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<div class="caption">
				<h3>Höchst bewertete Kurse</h3>

				<ol class="list-group">
					<% for(String key : hochstBewertete.keySet()){ %>
						<li class="list-group-item"><%=key%></li>
					<%} %>
				</ol>

			</div>
		</div>
	</div>

	<div class="col-sm-6 col-md-4">
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

	<div class="col-sm-6 col-md-4">
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