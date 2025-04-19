<%-- 
    Document   : get_partial_list
    Created on : 19 Apr 2025, 8:52:53 PM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Partial List Page</title>
    </head>
    <body>
        <h1>Get Partial List</h1>
        <p>Please enter start and end indices of the list below:</p>
        <form action="GetPartialListServlet.do" method="POST">
            <table>
                <tr>
                    <td>Start index:</td>
                    <td><input type="text" name="startIndex"/></td>
                </tr>
                <tr>
                    <td>End index:</td>
                    <td><input type="text" name="endIndex"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET PARTIAL LIST"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>