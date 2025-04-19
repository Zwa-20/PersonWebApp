<%-- 
    Document   : get_partial_list_outcome
    Created on : 19 Apr 2025, 9:14:59 PM
    Author     : sandi
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Partial List Outcome Page</title>
    </head>
    <body>
        <h1>Get Partial List Outcome</h1>
        <%
            List<Person> list = (List<Person>)request.getAttribute("partialList");
            Integer startIndex = Integer.parseInt(request.getParameter("startIndex"));
            Integer endIndex = Integer.parseInt(request.getParameter("endIndex"));
        %>
        <p>Below is the list of people retrieved from the database, from index <b><%=startIndex%></b> to <b><%=endIndex%></b>.</p>
        
        <table border = 1>
            <%
                for (int i = 0; i < list.size(); i++) {
                    Person p = list.get(i);
                    Long id = p.getId();
                    String name = p.getName();
                    String surname = p.getSurname();
            %>
            <tr>
                <td>ID:</td>
                <td><%=id%></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>Surname:</td>
                <td><%=surname%></td>
            </tr>
            <%
                }
            %>
        </table>
        <ul>
            <li><a href="index.html">Home Page</a></li>
            <li><a href="menu.jsp">Menu Page</a></li>
        </ul>
    </body>
</html>
