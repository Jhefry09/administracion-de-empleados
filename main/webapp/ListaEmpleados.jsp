<%@page import="java.util.List"%>
<%@page import="entidad.Empleado"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    List<Empleado> datos = (List<Empleado>) request.getAttribute("datos");
    if (datos != null && !datos.isEmpty()) {
%>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Surname</th>
            <th>DNI</th>
            <th>Department</th>
            <th>Position</th>
            <th>Salary</th>
        </tr>
        <% for (Empleado emp : datos) { %>
        <tr>
            <td><%= emp.getId_emp() %></td>
            <td><%= emp.getNom_emp() %></td>
            <td><%= emp.getApe_emp() %></td>
            <td><%= emp.getDni() %></td>
            <td><%= emp.getDepartamento() %></td>
            <td><%= emp.getPuesto() %></td>
            <td><%= emp.getSueldo() %></td>
        </tr>
        <% } %>
    </table>
<%
    } else {
%>
    <p>No data found.</p>
<%
    }
%>
</body>
</html>