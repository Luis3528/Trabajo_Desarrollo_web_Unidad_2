<%-- 
    Document   : eliminar
    Created on : 4/05/2023, 12:00:48 AM
    Author     : luisz
--%>

<!DOCTYPE html>
<html>
<head>
	<title>Eliminar fincas</title>
</head>
<body>

	<form action="eliminar.jsp" method="post">
		<label for="id_fincas">Selecciona la finca que deseas eliminar:</label>
		<select name="id_fincas" id="id_fincas">
			<option value="1">Finca 1</option>
			<option value="2">Finca 2</option>
			<!-- Agrega aquí todas las opciones disponibles -->
		</select>
		<br>
		<input type="submit" value="Eliminar">
	</form>

	<%
	if (request.getParameter("eliminado") != null) {
	%>
		<p>El registro ha sido eliminado correctamente</p>
	<%
	}
	%>

</body>
</html>
