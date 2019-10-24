    import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet({"/LoginUsuario"})
public class LoginUsuario extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      String usuario = request.getParameter("inputUsuario");
      String senha = request.getParameter("inputSenha");
      HttpSession ses = request.getSession(true);
      ses.setAttribute("usuario", usuario);
      RequestDispatcher rs = request.getRequestDispatcher("principal.jsp");
      rs.forward(request, response);
   }
}