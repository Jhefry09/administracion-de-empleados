package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidad.Administradores;
import modelo.ModelAdministrador;

/**
 * Servlet implementation class ServletAdministrador
 */
@WebServlet("/ServletAdministrador")
public class ServletAdministrador extends HttpServlet {
	ModelAdministrador model = new ModelAdministrador();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAdministrador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String login, clave;
	login = request.getParameter("txtUsuario");
	clave = request.getParameter("txtClave");
	Administradores admin = model.IniciarSesion(login, clave);
	if (admin == null) {
		request.setAttribute("error", "Usuario o clave incorrectos");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}else {
		request.setAttribute("usu", login);
		request.getRequestDispatcher("ServletEmpleado").forward(request, response);
	}
	}}

