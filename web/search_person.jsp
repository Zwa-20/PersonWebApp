<%-- 
    Document   : search_person
    Created on : 18 Apr 2025, 9:48:31 PM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Person Page</title>
    </head>
    <body>
        <h1>Search Person</h1>
        <p>Please enter the id of the person to search for.</p>
        <form  action="SearchPersoServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SEARCH"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
