<%-- 
    Document   : agregar
    Created on : 3/05/2023, 11:58:11 PM
    Author     : luisz
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%
// Obtener el objeto Connection desde la clase de conexión
Connection conn = conexion.establecerConexion();

// Verificar si se ha enviado el formulario de agregar
if (request.getMethod().equals("POST")) {
  // Obtener los valores del formulario
  int id = Integer.parseInt(request.getParameter("id"));
  String clave = request.getParameter("clave");
  String nombre = request.getParameter("nombre");
  int numHectaras = Integer.parseInt(request.getParameter("numHectaras"));
  int metrosCuadrados = Integer.parseInt(request.getParameter("metrosCuadrados"));
  String propietario = request.getParameter("propietario");
  String capataz = request.getParameter("capataz");
  String pais = request.getParameter("pais");
  String departamento = request.getParameter("departamento");
  String ciudad = request.getParameter("ciudad");
  int siProduceLeche = request.getParameter("siProduceLeche") != null ? 1 : 0;
  int siProduceCereales = request.getParameter("siProduceCereales") != null ? 1 : 0;
  int siProduceFrutas = request.getParameter("siProduceFrutas") != null ? 1 : 0;
  int siProduceVerduras = request.getParameter("siProduceVerduras") != null ? 1 : 0;
  int usuariocc = Integer.parseInt(request.getParameter("usuariocc"));

  // Preparar la consulta SQL para agregar un nuevo registro a la tabla Fincas
  String sql = "INSERT INTO Fincas (id, clave, nombre, numHectaras, metrosCuadrados, propietario, capataz, país, departamento, ciudad, siProduceLeche, siProduceCereales, siProduceFrutas, siProduceVerduras, usuariocc) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

  try {
  
    PreparedStatement stmt = conn.prepareStatement(sql);
    stmt.setInt(1, id);
    stmt.setString(2, clave);
    stmt.setString(3, nombre);
    stmt.setInt(4, numHectaras);
    stmt.setInt(5, metrosCuadrados);
    stmt.setString(6, propietario);
    stmt.setString(7, capataz);
    stmt.setString(8, pais);
    stmt.setString(9, departamento);
    stmt.setString(10, ciudad);
    stmt.setInt(11, siProduceLeche);
    stmt.setInt(12, siProduceCereales);
    stmt.setInt(13, siProduceFrutas);
    stmt.setInt(14, siProduceVerduras);
    stmt.setInt(15, usuariocc);

    // Ejecutar la consulta SQL
    int rowsAffected = stmt.executeUpdate();
    if (rowsAffected > 0) {
      out.println("Registro agregado exitosamente");
    } else {
      out.println("Error al agregar el registro");
    }
