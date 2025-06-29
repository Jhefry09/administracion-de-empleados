<%@page import="entidad.Empleado"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body class="bg-dark">
<%
	List<Empleado> datos = (List<Empleado>) request.getAttribute("datos");
	%>
<p class="text-white fs-1 text-center fw-bolder">EDITAR DATOS</p>
<br>
<div class="container">
<form action="">
<table class="table table-dark table-striped table-hover align-middle align-items-center">
	<thead>
	<tr class="text-center">
	<th scope="col">DATO</th>
	<th scope="col">EDICION</th>
	</tr>
	</thead>
	<tbody>
		<%  if (datos != null) {
				for (Empleado dat : datos) {
			%>
	<tr>
	<td scope="row">ID EMPLEADO</td><td>#<%= dat.getId_emp() %></td>
	</tr>
	<tr>
	<td>NOMBRE</td><td><input type="text" name="nom" placeholder="<%= dat.getNom_emp() %>"></td>
	</tr>
	<tr>
	<td>APELLIDO</td><td><input type="text" name="ape" placeholder="<%= dat.getApe_emp() %>"></td>
	</tr>
	<tr>
	<td>DNI</td><td><input type="text" name="dni" placeholder="<%= dat.getDni() %>"></td>
	</tr>
	<tr>
	<td>DEPARTAMENTO</td><td><input type="text" name="peda" placeholder="<%= dat.getDepartamento() %>"></td>
	</tr>
	<tr>
	<td>PUESTO</td><td><input type="text" name="pues" placeholder="<%= dat.getPuesto() %>"></td>
	</tr>
	<tr>
	<td>SUELDO</td><td><input type="text" name="nom" placeholder="<%= dat.getSueldo() %>"></td>
	</tr>
	<%
			}
			}
			%>
	</tbody>
</table>
</form>
</div>
</body>
</html>