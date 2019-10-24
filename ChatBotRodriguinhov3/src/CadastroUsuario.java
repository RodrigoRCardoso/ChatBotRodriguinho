 import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/CadastroUsuario"})
public class CadastroUsuario extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      String nome = request.getParameter("nomeAluno");
      String rm = request.getParameter("rmAluno");
      String usuario = request.getParameter("usuario");
      String senha = request.getParameter("senha");
      String dataEntrada = request.getParameter("dataNascimento");
      SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
      new Date();

      try {
         formato.parse(dataEntrada);
      } catch (Exception ex) {
         ;
      }

      String erro = "";
      RequestDispatcher rs;
      if (erro == "") {
         rs = request.getRequestDispatcher("sucessoCadastro.jsp");
         rs.forward(request, response);
      } else {
         out.println("<p class=\"msgErro\">" + erro + "</p>");
         rs = request.getRequestDispatcher("cadastro.jsp");
         rs.include(request, response);
      }

   }
}