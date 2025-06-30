<%@page import="entidad.Empleado"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="icon" href="img/editar.ico" type="image/x-icon">
<title>EDITANDO DATOS</title>
</head>
<body class="bg-dark animate__animated animate__backInDown">
	<%
	Empleado dat = (Empleado) request.getAttribute("datos");
	%>
	<div class="container my-3 position-relative">
		<div class="position-absolute start-0">
			<form action="ServletEmpleado" class=" mx-5">
				<input type="hidden" name="seleccion" value="Lista">
				<button class="btn btn-outline-light btn-md border-4">
					<i class="bi bi-caret-left-fill"></i> REGRESAR
				</button>
			</form>
		</div>
		<p class="text-white text-center fs-1 fw-bolder">EDITAR DATOS</p>
	</div>
	<br>
	<div class="container">
		<form action="ServletEmpleado">
			<table
				class="table table-dark table-striped table-hover align-middle align-items-center">
				<thead>
					<tr class="text-center">
						<th scope="col">DATO</th>
						<th scope="col">EDICION</th>
					</tr>
				</thead>
				<tbody class="text-center">
					<tr class="text-center">
						<td scope="row">ID EMPLEADO</td>
						<td>#<%=dat.getId_emp()%> <input type="hidden" name="id"
							value="<%=dat.getId_emp()%>"></td>
					</tr>
					<tr class="text-center">
						<td>NOMBRE</td>
						<td><input type="text" name="nom"
							class="form-control text-center bg-dark text-white border-4"
							value="<%=dat.getNom_emp()%>"></td>
					</tr>
					<tr>
						<td>APELLIDO</td>
						<td><input type="text" name="ape"
							class="form-control text-center bg-dark text-white border-4"
							value="<%=dat.getApe_emp()%>"></td>
					</tr>
					<tr>
						<td>DNI</td>
						<td><input type="text" name="dni"
							class="form-control text-center bg-dark text-white border-4"
							value="<%=dat.getDni()%>"></td>
					</tr>
					<tr>
						<td>DEPARTAMENTO</td>
						<td><input type="text" name="depa"
							class="form-control text-center bg-dark text-white border-4"
							value="<%=dat.getDepartamento()%>"></td>
					</tr>
					<tr>
						<td>PUESTO</td>
						<td><input type="text" name="pues"
							class="form-control text-center bg-dark text-white border-4"
							value="<%=dat.getPuesto()%>"></td>
					</tr>
					<tr>
						<td>SUELDO</td>
						<td><input type="text" name="suel"
							class="form-control text-center bg-dark text-white border-4"
							value="<%=dat.getSueldo()%>"></td>
					</tr>
					<tr class="text-center">
						<td colspan="2"><input type="hidden" name="seleccion"
							value="editar">
							<button type="button"
								class="text-center btn btn-outline-light btn-md border-4 mx-auto col-6"
								data-bs-toggle="modal" data-bs-target="#guardar">
								<i class="bi bi-floppy2"></i> GUARDAR
							</button>
							<div class="modal fade" id="guardar" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content  bg-dark">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">CONFIRMACIÓN</h5>
											<button type="button" class="btn-close btn-close-white btn-light"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">SEGURO QUE QUIERE GUARDAR???</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">CANCELAR</button>
											<button type="submit"
												class="btn btn-outline-light btn-md border-4">ACEPTAR</button>
										</div>
									</div>
								</div>
							</div>
							</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>

</body>
</html>