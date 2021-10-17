<%-- 
    Document   : shoppingList
    Created on : Oct 16, 2021, 3:52:36 PM
    Author     : seanz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello, ${username}</p>
        <a href="shopping?logout">Logout</a>
        <br>
        <h2>List</h2>
        <p>Add item:</p>
        <input type="text" name="add_item">
        <input type="submit" value="Add">
        <p>Placeholder</p>
        <br>
        <input type="submit" value="Delete">
    </body>
</html>
