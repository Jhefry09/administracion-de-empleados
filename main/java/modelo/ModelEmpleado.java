package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entidad.Empleado;
import utils.MySQLDBConexion;

public class ModelEmpleado {
public List<Empleado> mostrar(){
	List<Empleado> datos = new ArrayList<Empleado>();
	String sql = "SELECT * FROM empleados";
	try {
		Connection con = MySQLDBConexion.getConexion();
		PreparedStatement pstm = con.prepareStatement(sql);
		ResultSet rs = pstm.executeQuery();
		while (rs.next()) {
			Empleado emp = new Empleado();
			emp.setId_emp(rs.getInt(1));
			emp.setNom_emp(rs.getString(2));
			emp.setApe_emp(rs.getString(3));
			emp.setDni(rs.getString(4));
			emp.setDepartamento(rs.getString(5));
			emp.setPuesto(rs.getString(6));
			emp.setSueldo(rs.getInt(7));
			datos.add(emp);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}return datos;
}
}
