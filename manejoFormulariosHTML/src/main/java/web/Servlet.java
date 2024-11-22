package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet
 */
@WebServlet(name="Servlet", value="/Servlet")
public class Servlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		var usuario = request.getParameter("usuario");
		var password = request.getParameter("password");
		
		String tecnologias[] = request.getParameterValues("tecnologia");
		var genero = request.getParameter("genero");
		var ocupacion = request.getParameter("ocupacion");
		var comentarios = request.getParameter("comentarios");
		var valorOculto = request.getParameter("oculto");
		
		out.print("<html data-bs-theme='dark'>");
		out.print("<head>");
		out.print("<title>Resultado Servlet</title>");
		out.print("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css' rel='stylesheet'>");
		out.print("</head>");
		out.print("<body class='container mt-5'>");
		out.print("<h1 class='mb-4 text-center text-warning'>Parámetros procesados por el Servlet</h1>");
		out.print("<table class='table table-bordered table-striped'>");
		out.print("<tr><th>Usuario</th><td>" + usuario + "</td></tr>");
		out.print("<tr><th>Password</th><td>" + password + "</td></tr>");
		out.print("<tr><th>Tecnologías</th><td>");
		if (tecnologias != null) {
		out.print(String.join(" / ", tecnologias));
		}
		else{
		out.print("Tecnologías no proporcionadas");
		}
		out.print("</td></tr>");
		out.print("<tr><th>Género</th><td>" + genero + "</td></tr>");
		out.print("<tr><th>Ocupación</th><td>" + ocupacion + "</td></tr>");
		out.print("</td></tr>");
		out.print("<tr><th>Comentarios</th><td>" + comentarios + "</td></tr>");
		out.print("<tr><th>Valor oculto</th><td>" + valorOculto + "</td></tr>");
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}
}
