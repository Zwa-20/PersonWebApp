<%-- 
    Document   : remove_person_outcome
    Created on : 19 Apr 2025, 9:20:35 PM
    Author     : sandi
--%>

<%@page import="za.ac.tut.entity.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Person Page</title>
    </head>
    <body>
        <h1>Remove Person</h1>
        <%
            Person p = (Person)request.getAttribute("person");
            Long id = p.getId();
        %>
        <p>A person with id <b><%=id%></b> has been successfully removed.</p>
        <ul>
            <li><a href="index.html">Home Page</a></li>
            <li><a href="menu.jsp">Menu Page</a></li>
        </ul>
    </body>
</html>
