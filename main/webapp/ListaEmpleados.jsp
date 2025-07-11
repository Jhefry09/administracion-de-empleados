<%@page import="java.util.List"%>
<%@page import="entidad.Empleado"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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

<meta charset="UTF-8">
<link rel="icon" href="img/persona.ico" type="image/x-icon">
<title>LISTA DE EMPLEADOS</title>
</head>
<body class="bg-dark animate__animated animate__lightSpeedInRight">
	<%
	List<Empleado> datos = (List<Empleado>) request.getAttribute("datos");
	%>
	<div class=" align-items-center text-center">
	<p class="text-white fs-1 text-center fw-bolder">LISTA DE EMPLEADOS</p>
	</div>
	<div class=" row d-flex mx-3" >
			<div class="col">
				<form class="d-flex gap-2 align-items-center" action="ServletEmpleado" >
				<input type="hidden" name="seleccion" value="buscarcodi" >
					<div class="d-flex gap-2">
					<div>
					<select name="tipo" class=" form-select form-select-md  bg-dark text-light border-3">
					<option>ID</option>
					<option>NOMBRE</option>
					<option>APELLIDO</option>
					<option>DNI</option>
					</select>
					</div>
					<div>
					<input type="text" name="buscar" placeholder="EMPLEADO"
						class="form-control bg-dark text-white border-4"> 
					</div>
					</div>
					<div class="d-flex align-items-center">
					<div>
					<button type="submit" class="btn btn-outline-light btn-md fw-bolder border-4 d-flex align-items-center"><i class="bi bi-search"></i>BUSCAR</button>
						</div>
					</div>
				</form>
				</div>
			<div class="col mx-3 d-flex gap-2 flex-row-reverse align-items-center">
			<form action="ServletEmpleado?seleccion=Lista">
			<input type="hidden" name="seleccion" value="Lista">
				<button
						class="btn btn-outline-light btn-md fw-bolder border-4"
						><i class="bi bi-arrow-clockwise"></i> ACTUALIZAR</button>
				</form>
				<div>
					<a href="AgregarEmpleado.jsp"><button type="submit"
						class="btn btn-outline-light btn-md fw-bolder border-4"
						> <i class="bi bi-person-plus-fill"></i> AGREGAR EMPLEADO</button></a>
				</div></div>
	
	</div>
	<br>
	<div class="table-responsive">
	<table class="table table-responsive table-dark table-striped table-hover table-bordered">

		<thead>
			<tr class="text-center">
				<th scope="col">ID EMPLEADO</th>
				<th scope="col">NOMBRE</th>
				<th scope="col">APELLIDO</th>
				<th scope="col">DNI EMPLEADO</th>
				<th scope="col">DEPARTAMENTO</th>
				<th scope="col">PUESTO</th>
				<th scope="col">SUELDO</th>
				<th scope="col">EDITAR</th>
			</tr>
		</thead>
		<tbody class="table-bordered">
			<%
			if (datos != null) {
				for (Empleado dat : datos) {
			%>
			<tr class="text-center align-middle align-items-center animate__animated animate__fadeInDown animate__delay-1s table-responsive">
				<td scope="row">#<%=dat.getId_emp()%></td>
				<td><%=dat.getNom_emp()%></td>
				<td><%=dat.getApe_emp()%></td>
				<td><%=dat.getDni()%></td>
				<td><%=dat.getDepartamento()%></td>
				<td><%=dat.getPuesto()%></td>
				<td><%=dat.getSueldo()%></td>
				<td class="gap-2 d-flex align-items-center justify-content-center" >
				<form action="ServletEmpleado">
				<input type="hidden" name="seleccion" value="btnEditar">
				<input type="hidden" name="idEditar" value="<%=dat.getId_emp()%>">
				<button class="btn btn-outline-light btn-lg"><i class="bi bi-person-fill-gear"></i></button>
				</form>
				<form action="ServletEmpleado">
				<input type="hidden" name="seleccion" value="borrar">
				<input type="hidden" name="codigo"value="<%=dat.getId_emp()%>">
				<button class="btn btn-outline-light btn-lg" ><i class="bi bi-person-fill-dash"></i></button>
				</form>
				</td>				
			</tr>
			<%
			}
			}
			%>
		</tbody>
	</table>
	</div>
</body>
</html>