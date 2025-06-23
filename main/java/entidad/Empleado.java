package entidad;

public class Empleado {
private int id_emp, sueldo;
private String nom_emp, ape_emp, dni, departamento, puesto;
public int getId_emp() {
	return id_emp;
}
public void setId_emp(int id_emp) {
	this.id_emp = id_emp;
}
public int getSueldo() {
	return sueldo;
}
public void setSueldo(int sueldo) {
	this.sueldo = sueldo;
}
public String getNom_emp() {
	return nom_emp;
}
public void setNom_emp(String nom_emp) {
	this.nom_emp = nom_emp;
}
public String getApe_emp() {
	return ape_emp;
}
public void setApe_emp(String ape_emp) {
	this.ape_emp = ape_emp;
}
public String getDni() {
	return dni;
}
public void setDni(String dni) {
	this.dni = dni;
}
public String getDepartamento() {
	return departamento;
}
public void setDepartamento(String departamento) {
	this.departamento = departamento;
}
public String getPuesto() {
	return puesto;
}
public void setPuesto(String puesto) {
	this.puesto = puesto;
} 

}
