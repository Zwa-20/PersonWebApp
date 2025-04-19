<%-- 
    Document   : edit_person_outcome
    Created on : 18 Apr 2025, 9:35:29 PM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Person Outcome Page</title>
    </head>
    <body>
        <h1>Edit Person Outcome</h1>
        <%
            Long id = (Long)request.getAttribute("id");
            String surname = (String)request.getAttribute("surname");
        %>
        <p>
            <b><%=surname%> [<%=id%>]</b>  has been successfully edited in the database.
        </p>
        <ul>
            <li><a href="index.html">Home Page</a></li>
            <li><a href="menu.jsp">Menu Page</a></li>
        </ul>
    </body>
</html>
