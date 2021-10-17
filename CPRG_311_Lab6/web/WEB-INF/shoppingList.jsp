<%-- 
    Document   : shoppingList
    Created on : Oct 16, 2021, 3:52:36 PM
    Author     : seanz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello, ${username} <a href="shopping?logout">Logout</a></p>
 
        <h2>List</h2>
        <form method="post" action="">
        <p>Add item:
        <input type="text" name="additem" >
        <input type="hidden" name="action" value="add">
        <input type="submit" value="Add">
        </p>
        </form>
        
        <form>
        <c:forEach var="item" items="${items}" >  
            <li><input type="radio" name="additem" value="${item}">${item}</li>
        </c:forEach>  
        <br>
        <input type="submit" value="Delete">
        <input type="hidden" name="action" value="delete">
        </form>
    </body>
</html>
