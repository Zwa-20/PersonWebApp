<%-- 
    Document   : get_list_size
    Created on : 19 Apr 2025, 9:02:18 PM
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
        <p>Please click on the button below to get the list size.</p>
        <form action="GetListSizeServlet.do" method="GET">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET LIST SIZE"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
