<%@page import="java.util.List"%>
<%@page import="entidad.Empleado"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    List<Empleado> datos = (List<Empleado>) request.getAttribute("datos");
  //  if (datos != null && !datos.isEmpty()) {
%>
<fieldset>
<h1 align="center">LISTA DE EMPLEADOS</h1>
<table border="1" align="center" class="table table-striped">
<thead><tr class="table-primary">
	<th scope="col"> ID EMPLEADO </th>
	<th scope="col"> NOMBRE </th>
	<th scope="col"> APELLIDO </th>
	<th scope="col"> DNI EMPLEADO </th>
	<th scope="col"> DEPARTAMENTO </th>
	<th scope="col"> PUESTO </th>
	<th scope="col"> SUELDO </th>
</tr></thead>
<tbody>
<%
	if (datos != null){
		for(Empleado dat : datos){
%>
	<tr>
	<td scope="row"><%=dat.getId_emp()%></td>	
	<td><%=dat.getNom_emp()%></td>
	<td><%=dat.getApe_emp() %> </td>
	<td><%=dat.getDni() %> </td>
	<td><%=dat.getDepartamento() %> </td>
	<td><%=dat.getPuesto() %> </td>
	<td><%=dat.getSueldo() %> </td>
	</tr>
<%
		}
	}
%>
</fieldset>
</tbody>
</table>
</body>
</html>