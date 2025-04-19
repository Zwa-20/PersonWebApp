<%-- 
    Document   : add_person
    Created on : 18 Apr 2025, 8:39:45 PM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Person Page</title>
    </head>
    <body>
        <h1>Add person</h1>
        <p>Please add person details below:</p>
        <form action="AddPersonServlet.do" method="POST">
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>Surname: </td>
                    <td><input type="text" name="surname"/></td>
                </tr>
                <tr>
                    <td>Gender: </td>
                    <td>
                        <select name="gender">
                            <option value="F">Female</option>
                            <option value="M">Male</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="ADD PERSON"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
