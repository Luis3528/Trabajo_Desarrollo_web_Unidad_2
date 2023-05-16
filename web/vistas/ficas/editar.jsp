<%-- 
    Document   : editar
    Created on : 3/05/2023, 11:57:47 PM
    Author     : luisz
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%
// Obtener el ID del registro a editar
int id = Integer.parseInt(request.getParameter("id"));

// Obtener los datos del registro a editar
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
try {
      conexion conexionObj = new conexion();
    conn = conexionObj.establecerConxion();

    // Obtener los datos del registro a editar
    Statement stmt = conn.createStatement();
    String sql = "SELECT * FROM Fincas WHERE id = " + id;
    ResultSet rs = stmt.executeQuery(sql);
    if (rs.next()) {
        String clave = rs.getString("clave");
        String nombre = rs.getString("nombre");
        int numHectaras = rs.getInt("numHectaras");
        int metrosCuadrados = rs.getInt("metrosCuadrados");
        
        String propietario = rs.getString("propietario");
        String capataz = rs.getString("capataz");
        String pais = rs.getString("país");
        String departamento = rs.getString("departamento");
        String ciudad = rs.getString("ciudad");
        
        
        int siProduceLeche = rs.getInt("siProduceLeche");
        int siProduceCereales = rs.getInt("siProduceCereales");
        int siProduceFrutas = rs.getInt("siProduceFrutas");
        int siProduceVerduras = rs.getInt("siProduceVerduras");
        int usuariocc = rs.getInt("usuariocc");

        // Si se envió el formulario de edición
        if (request.getMethod().equals("POST")) {
            // Obtener los datos enviados por el formulario
            clave = request.getParameter("clave");
            nombre = request.getParameter("nombre");
            numHectaras = Integer.parseInt(request.getParameter("numHectaras"));
            metrosCuadrados = Integer.parseInt(request.getParameter("metrosCuadrados"));
            propietario = request.getParameter("propietario");
            capataz = request.getParameter("capataz");
            pais = request.getParameter("pais");
            departamento = request.getParameter("departamento");
            ciudad = request.getParameter("ciudad");
            siProduceLeche = request.getParameter("siProduceLeche") != null ? 1 : 0;
            siProduceCereales = request.getParameter("siProduceCereales") != null ? 1 : 0;
            siProduceFrutas = request.getParameter("siProduceFrutas") != null ? 1 : 0;
            siProduceVerduras = request.getParameter("siProduceVerduras") != null ? 1 : 0;
            usuariocc = Integer.parseInt(request.getParameter("usuariocc"));

            // Actualizar los datos del registro
            sql = "UPDATE Fincas SET clave = '" + clave + "', nombre = '" + nombre + "', numHectaras = " + numHectaras + ", metrosCuadrados = " + metrosCuadrados + ", propietario = '" + propietario + "', capataz = '" + capataz + "', país = '" + pais + "', departamento = '" + departamento + "', ciudad =
