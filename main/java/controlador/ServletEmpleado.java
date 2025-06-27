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
		case "Lista":
			Lista(request, response);
			break;
		}
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
