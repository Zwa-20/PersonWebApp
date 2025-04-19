<%-- 
    Document   : search_person_outcome
    Created on : 18 Apr 2025, 9:57:36 PM
    Author     : sandi
--%>

<%@page import="za.ac.tut.entity.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Person Outcome Page</title>
    </head>
    <body>
        <h1>Search Person Outcome</h1>
        <%
            Person p  = (Person)request.getAttribute("person");
            String name = p.getName();
            String surname = p.getSurname();
            Long id = p.getId();
        %>
        <p>
            <b><%=name%> <%=surname%> <%=id%> has been found.</b>
        </p>
        <ul>
            <li><a href="index.html">Home Page</a></li>
            <li><a href="menu.jsp">Menu Page</a></li>
        </ul>
    </body>
</html>
