package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LivrariaServlet")
public class LivrariaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LivrariaServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cod = request.getParameter("codlivro");
		String til = request.getParameter("titulo");
		String aut = request.getParameter("autor");
		String cat = request.getParameter("categoria");
		String val = request.getParameter("valor");
	}

}
