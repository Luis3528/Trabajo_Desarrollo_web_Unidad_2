<%-- 
    Document   : login
    Created on : 4/05/2023, 12:10:02 AM
    Author     : luisz
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Iniciar sesión</title>
</head>
<body>
    <h1>Iniciar sesión</h1>
    <form action="LoginServlet" method="post">
        <label for="username">Nombre de usuario:</label>
        <input type="text" id="username" name="username"><br>
        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password"><br>
        <input type="submit" value="Iniciar sesión">
    </form>
</body>
</html>
