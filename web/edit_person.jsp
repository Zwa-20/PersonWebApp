<%-- 
    Document   : edit_person
    Created on : 18 Apr 2025, 9:21:00 PM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Person Page</title>
    </head>
    <body>
        <h1>Edit Person</h1>
        <p>Please enter the details of the person to edit.</p>
        <form action="EditPersonServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td><input type="text" name="surname"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="EDIT PERSON"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
