<%@ page import="modells.user" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>BESTFitness</title>
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
    <div>
        <%
            user usr = (user)session.getAttribute("user");
        %>
        <nav>
            <a href="/raum">Räume</a>
            <a href="/kurse">Kurse</a>

            <%
                if( usr != null ) {
                    out.print("<a href=\"/logout\">Abmelden</a>");
                }
                else {
                    out.println("<a href=\"/login.jsp\">Anmelden</a>");
                    out.println("<a href=\"/register.jsp\">Registrieren</a>");
                }
            %>
        </nav>