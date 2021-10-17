<%-- 
    Document   : register
    Created on : Oct 16, 2021, 3:51:32 PM
    Author     : seanz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <form method="post" action="shopping">
        <label>Username:</label>
        <input type="text" name="user_name" value="${username}">
        <input type="submit" value="Register name">
        </form>
        <p>${loginErr}</p>
        <p>${logoutMsg}</p>
    </body>
</html>
