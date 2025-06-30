package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidad.Empleado;
import modelo.ModelEmpleado;

/**
 * Servlet implementation class ServletEmpleado
 */
@WebServlet("/ServletEmpleado")
public class ServletEmpleado extends HttpServlet {
	ModelEmpleado memp = new ModelEmpleado();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEmpleado() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String selec = request.getParameter("seleccion");
		String dato = request.getParameter("buscar");
		switch (selec) {
		case "buscarcodi":
			if (dato == null || dato.trim().isEmpty()) {
				Lista(request, response);
			} else {
				buscar(request, response);
			}
			break;
		case "agregar":
			agregar(request, response);
			break;
		case "editar":
			editar(request, response);
			break;
		case "borrar":
			borrar(request, response);
			break;
		case "Lista":
			Lista(request, response);
			break;
		case "btnEditar":
			btnEditar(request, response);
			break;
		}
	}
	protected void editar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Empleado emp = new Empleado();
		int id = Integer.parseInt(request.getParameter("id")); 
		String nom = request.getParameter("nom");		
		String ape = request.getParameter("ape");		
		String dni = request.getParameter("dni");		
		String depa = request.getParameter("depa");		
		String pues = request.getParameter("pues");
		int suel = Integer.parseInt(request.getParameter("suel"));
		emp.setId_emp(id);
		emp.setNom_emp(nom);
		emp.setApe_emp(ape);
		emp.setDni(dni);
		emp.setDepartamento(depa);
		emp.setPuesto(pues);
		emp.setSueldo(suel);
		int editar = memp.EditarEmpleado(emp);
		if (editar != -1) {
			Lista(request, response);
		}else {
			System.out.println("error al editar");
		}
	}
	protected void borrar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int codigo = Integer.parseInt(request.getParameter("codigo"));
		memp.BorrarEmpleado(codigo);
		System.out.println(codigo);
		Lista(request,response);
	}
	protected void agregar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Empleado emp = new Empleado();
		String nom = request.getParameter("nom");		
		String ape = request.getParameter("ape");		
		String dni = request.getParameter("dni");		
		String depa = request.getParameter("depa");		
		String pues = request.getParameter("pues");
		int suel = Integer.parseInt(request.getParameter("suel"));
		emp.setNom_emp(nom);
		emp.setApe_emp(ape);
		emp.setDni(dni);
		emp.setDepartamento(depa);
		emp.setPuesto(pues);
		emp.setSueldo(suel);
		int editar = memp.AgregarEmpleado(emp);
		if (editar != -1) {
			Lista(request, response);
		}else {
			System.out.println("error al editar");
		}		
		
		
	}
	protected void btnEditar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("idEditar"));
		Empleado emp = memp.btnEditar(id);
		request.setAttribute("datos", emp);
		request.getRequestDispatcher("EditarEmpleado.jsp").forward(request, response);
	}
	protected void buscar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String tipo = request.getParameter("tipo");
		String dato = request.getParameter("buscar");
		String valor = "";
		System.out.println(tipo);
		System.out.println(dato);
		switch (tipo) {
		case "NOMBRE":
			valor = "nom_emp";
			break;
		case "APELLIDO":
			valor = "ape_emp";
			break;
		case "DNI":
			valor = "dni";
			break;
		default:
			valor = "id_emp";
			break;
		}
		List<Empleado> info = new ModelEmpleado().BuscarEmpleado(dato, valor);
		System.out.println(info);
		request.setAttribute("datos", info);
		request.getRequestDispatcher("ListaEmpleados.jsp").forward(request, response);
	}

	protected void Lista(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Empleado> info = new ModelEmpleado().mostrar();
		request.setAttribute("datos", info);
		request.getRequestDispatcher("ListaEmpleados.jsp").forward(request, response);
	}
}
