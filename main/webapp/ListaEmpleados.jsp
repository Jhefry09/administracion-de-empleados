<%@page import="java.util.List"%>
<%@page import="entidad.Empleado"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>LISTA DE EMPLEADOS</title>
</head>
<body class="bg-dark">
	<%
	List<Empleado> datos = (List<Empleado>) request.getAttribute("datos");
	%>
	<p class="text-white fs-1 text-center fw-bolder">LISTA DE EMPLEADOS</p>
	<table class="table table-dark">
		<tr>
			<td class="text-start">
				<form action="ServletEmpleado?seleccion=buscarcodi">
					<input type="text" name="buscar" placeholder="BUSCAR EMPLEADO"
						class="bg-dark text-white border-4"> <input type="submit"
						class="btn btn-outline-light btn-sm fw-bolder border-3"
						value="BUSCAR">
				</form>
			</td>
			<td class="text-end">
				<form action="ServletEmpleado?seleccion=agregar">
					<input type="submit"
						class="btn btn-outline-light btn-sm fw-bolder border-3"
						value="+AGREGAR EMPLEADO">
				</form>
			</td>
		</tr>
	</table>
	<table border="1" class="table table-dark table-striped table-hover">

		<thead>
			<tr class="text-center">
				<th scope="col">ID EMPLEADO</th>
				<th scope="col">NOMBRE</th>
				<th scope="col">APELLIDO</th>
				<th scope="col">DNI EMPLEADO</th>
				<th scope="col">DEPARTAMENTO</th>
				<th scope="col">PUESTO</th>
				<th scope="col">SUELDO</th>
			</tr>
		</thead>
		<tbody>
			<%
			if (datos != null) {
				for (Empleado dat : datos) {
			%>
			<tr class="text-center">
				<td scope="row">#<%=dat.getId_emp()%></td>
				<td><%=dat.getNom_emp()%></td>
				<td><%=dat.getApe_emp()%></td>
				<td><%=dat.getDni()%></td>
				<td><%=dat.getDepartamento()%></td>
				<td><%=dat.getPuesto()%></td>
				<td><%=dat.getSueldo()%></td>
			</tr>
			<%
			}
			}
			%>
		</tbody>
	</table>
</body>
</html>