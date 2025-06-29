package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entidad.Empleado;
import utils.MySQLDBConexion;

public class ModelEmpleado {
	public List<Empleado> mostrar() {
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
		}
		return datos;
	}

	public List<Empleado> BuscarEmpleado(String datoBuscar, String tipo) {
		List<Empleado> datos = new ArrayList<Empleado>();
		String sql = "SELECT * FROM empleados WHERE " + tipo + "=?";
		try {
			Connection con = MySQLDBConexion.getConexion();
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setString(1, datoBuscar);
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
		}
		return datos;
	}
	public int BorrarEmpleado(Integer datoEliminar) {
		int eliminar = -1;
		String sql = "DELETE FROM empleados WHERE id_emp=?";
		try {
			Connection con = MySQLDBConexion.getConexion();
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setInt(1, datoEliminar);
			eliminar = pstm.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return eliminar;
	}
	public int EditarEmpleado(Empleado emp) {
		int editar = -1;
		String sql = "UPDATE empleados SET nom_emp=?, ape_emp=?, dni=?, departamento=?, puesto=?, sueldo=? WHERE id_emp=?";
		try {
			Connection con = MySQLDBConexion.getConexion();
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setString(1, emp.getNom_emp());
			pstm.setString(2, emp.getApe_emp());
			pstm.setString(3, emp.getDni());
			pstm.setString(4, emp.getDepartamento());
			pstm.setString(5, emp.getPuesto());
			pstm.setInt(6, emp.getSueldo());
			pstm.setInt(7, emp.getId_emp());
			editar = pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}return editar;
	}
	public Empleado btnEditar(int cod) {
		String sql = "SELECT * FROM empleados WHERE id_emp=?";
		Empleado emp = null;
		try {
			Connection con = MySQLDBConexion.getConexion();
			PreparedStatement pstm = con.prepareStatement(sql);
			pstm.setInt(1, cod);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				emp = new Empleado();
				emp.setId_emp(rs.getInt(1));
				emp.setNom_emp(rs.getString(2));
				emp.setApe_emp(rs.getString(3));
				emp.setDni(rs.getString(4));
				emp.setDepartamento(rs.getString(5));
				emp.setPuesto(rs.getString(6));
				emp.setSueldo(rs.getInt(7));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}return emp;
}
}
























