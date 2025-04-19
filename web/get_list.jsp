<%-- 
    Document   : get_list
    Created on : 19 Apr 2025, 8:47:17 PM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get List Page</title>
    </head>
    <body>
        <h1>Get List</h1>
        <p>Please click on the button below to get the entire list.</p>
        <form action="GetListServlet.do" method="GET">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET LIST"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
