                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../../css/styleSignup.php"> 
	<title>Registro de Usuario</title>
</head>
<body>
	
	<h1>Registro de Usuario</h1>
	<form method="post" action="signup.php">
		<label for="cc">Cédula:</label>
		<input type="text" name="cc" required>
		<br>
		<label for="pass">Contraseña:</label>
		<input type="password" name="pass" required>
		<br>
		<label for="nombre">Nombre:</label>
		<input type="text" name="nombre" required>
		<br>
		<label for="apellido">Apellido:</label>
		<input type="text" name="apellido" required>
		<br>
		<label for="genero">Género:</label>
		<input type="radio" name="genero" value="Masculino" required> Masculino
		<input type="radio" name="genero" value="Femenino" required> Femenino
		<br>
		<label for="email">Email:</label>
		<input type="email" name="email" required>
		<br>
		<input type="submit" value="Registrarse">
	</form>
	
	
</body>
</html>