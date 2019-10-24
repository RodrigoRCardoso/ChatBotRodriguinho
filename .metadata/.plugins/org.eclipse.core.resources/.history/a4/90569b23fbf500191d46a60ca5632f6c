package br.com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.bean.UsuarioBean;
import br.com.dao.UsuarioDAO;

@WebServlet("/CadastroUsu")
public class CadastroUsuario extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nome = request.getParameter("nomeAluno");
		int rmUsuario  = Integer.parseInt(request.getParameter("rmAluno"));
		String email = request.getParameter("email");
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		String dataNascimento = request.getParameter("dataNascimento"); // ver como fazer o parse de LocalDate -> String to LocalDate in base
		
		UsuarioBean user = new UsuarioBean();
		user.setNome(nome);
		user.setRm(rmUsuario);
		user.setEmail(email);
		user.setUsuario(usuario);
		user.setSenha(senha);
		user.setDataNascimento(dataNascimento);
		
		try {
		UsuarioDAO dao = new UsuarioDAO();
		 
		dao.Cadastro(user);
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher("sucessoCadastro.jsp");
		request.setAttribute("nome", nome);
		request.setAttribute("rmUsuario", rmUsuario);
		request.setAttribute("email", email);
		request.setAttribute("usuario", usuario);
		request.setAttribute("senha", senha);
		request.setAttribute("dataNascimento", dataNascimento);
		rd.forward(request, response);
		
		
		
		
		
		

	}

}
