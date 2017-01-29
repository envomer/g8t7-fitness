<%@ page import="modells.user" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>BESTFitness</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
        table.table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        .table td, .table th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        .table tr:nth-child(even) {
            background-color: #dddddd;
        }

        div.transbox {
            width: 400px;
            height: 220px;
            margin: 30px;
            background-color: #ffffff;
            border: 1px solid black;
            opacity: 0.6;
            filter: alpha(opacity=60); /* For IE8 and earlier */
        }
        div.background {
            background: url(klematis.jpg) repeat;
            border: 2px solid black;
        }
        div.transbox p {
            margin: 5%;
            font-weight: bold;
            color: #000000;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            user usr = (user)session.getAttribute("user");
        %>
        <nav class="navbar navbar-default">
            <ul class="nav navbar-nav">
                <li><a href="home.jsp">Homepage</a></li>
            <%
                if( usr != null ) {
                    out.println("<li><a href='raum.jsp'>Räume</a></li>");
                    out.println("<li><a href='kurse.jsp'>Kurse</a></li>");
                    out.println("<li><a href='statistics.jsp'>Stats</a></li>");
                    out.println("<li><a href='logout'>Abmelden</a></li>");
                }
                else {
                    out.println("<li><a href='login.jsp'>Anmelden</a></li>");
                    out.println("<li><a href='register.jsp'>Registrieren</a></li>");
                }
            %>
            </ul>

            <%
                if( usr != null ) {
                    out.println("<p class=\"navbar-text\">[Angemeldet als " + usr.getName() + " | <b>" + usr.getBenutzertypeClean() + "</b>]</p>");
                }
            %>
        </nav>
