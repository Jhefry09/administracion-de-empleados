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
	String msj_error = (String) request.getAttribute("error");
	String sin_error = "";
	if (msj_error != null) {
		sin_error = msj_error;
	}
	%>
	<form action="ServletAdministrador">
		<fieldset>
			<h1 align="center" class="h1-white">LOGIN DE ADMINISTRADORES</h1>
			<table border="1" style="padding: 2px;" align="center" class="table table-dark table-striped">
				<tr>
					<td>USUARIO:</td>
					<td><input type="text" name="txtUsuario" required></td>
				</tr>
				<tr>
					<td>CONTRASEÑA:</td>
					<td><input type="password" name="txtClave" required></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit"
						value="Enviar" style="margin-right: 10px;"></td>
				</tr>
			</table>
			<h4 style="color: red;"><%=sin_error %></h4>
		</fieldset>
	</form>
</body>
</html>