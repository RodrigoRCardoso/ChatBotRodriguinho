package br.com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.dao.UsuarioDAO;

@WebServlet("/ValidaLogin")
public class ValidaLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String usuario = request.getParameter("inputUsuario");
		String senha = request.getParameter("inputSenha");
		
		boolean tenta = false;
		
		try {
			UsuarioDAO dao = new UsuarioDAO();

			tenta = dao.buscaUsuarioEsenha(usuario, senha);

		} catch (Exception e) {
			e.printStackTrace();
			
		}

		System.out.println("XXX" + tenta);
		
		if (tenta == true) {
			/*RequestDispatcher rd = request.getRequestDispatcher("principal.jsp");
			request.setAttribute("usuario", usuario);
			request.setAttribute("senha", senha);

			rd.forward(request, response);
			*/
			HttpSession session = request.getSession();
			session.setAttribute("usuario", usuario);
			System.out.println("Redirecionadno para principal");
			request.getRequestDispatcher("principal.jsp").forward(request, response);

		} else {
			RequestDispatcher rd = request.getRequestDispatcher("LoginErro.jsp");
			request.setAttribute("usuario", usuario);
			request.setAttribute("senha", senha);


			rd.forward(request, response);
		}

	}
}
