<%-- 
    Document   : get_list_size_outcome
    Created on : 19 Apr 2025, 9:23:50 PM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get List Size Page</title>
    </head>
    <body>
        <h1>Get List Size</h1>
        <%
            Integer size = (Integer)request.getAttribute("size");
            String surname = (String)request.getAttribute("surname");
        %>
        <p>
            There are <b><%=size%></b> records in the database.
        </p>
        <ul>
            <li><a href="index.html">Home Page</a></li>
            <li><a href="menu.jsp">Menu Page</a></li>
        </ul>
    </body>
</html>
