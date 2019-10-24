/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.21
 * Generated at: 2019-10-24 01:16:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class principal_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"pt-br\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Principal</title>\r\n");
      out.write("<link rel=\"icon\" href=\"images/icon.jpg\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\"\r\n");
      out.write("\tintegrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\"\r\n");
      out.write("\tcrossorigin=\"anonymous\">\r\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Lato'\r\n");
      out.write("\trel='stylesheet' type='text/css'>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body id=\"fundo\">\r\n");
      out.write("\t");

		String usuario = (String) session.getAttribute("usuario");
		if (usuario == null) {
			response.sendRedirect("login.jsp");
		}
	
      out.write("\r\n");
      out.write("\t<div id=\"divBground\" class=\"bg\">\r\n");
      out.write("\t\t<a href=\"index.jsp\" class=\"txtLogout btnLog\">Logout</a>\r\n");
      out.write("\t\t<h2 class=\"text-center logo\">TFIN</h2>\r\n");
      out.write("\t\t<h5 class=\"text-center\">The Future is Now</h5>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"divCabecalho-nav\">\r\n");
      out.write("\t\t<nav class=\"navbar navbar-expand-lg navbar-light\">\r\n");
      out.write("\t\t\t<div id=\"navbarNavAltMarkup\">\r\n");
      out.write("\t\t\t\t<div class=\"navbar-nav\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-md-2\">\r\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-item nav-link active\" href=\"principal.jsp\">Home</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-md-2\">\r\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-item nav-link active\" href=\"cursos.jsp\">Cursos</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-md-2\">\r\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-item nav-link active\" href=\"ajuda.jsp\">Contato</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-md-3\">\r\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-item nav-link active\" href=\"quemSomos.jsp\">Sobre\r\n");
      out.write("\t\t\t\t\t\t\to Chat</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-md-3\">\r\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-item nav-link active\" href=\"onlineClass.jsp\">Online\r\n");
      out.write("\t\t\t\t\t\t\tClass</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<section class=\"container\">\r\n");
      out.write("\t\t<div class=\"row mx-1\">\r\n");
      out.write("\t\t\t<div class=\"col-md-4 mb-4\">\r\n");
      out.write("\t\t\t\t<!-- <div class=\"card card-image\" style=\"background-image: url(https://mdbootstrap.com/img/Photos/Others/img%20%2832%29.jpg);\"> -->\r\n");
      out.write("\t\t\t\t<div\r\n");
      out.write("\t\t\t\t\tclass=\"text-black text-center align-items-center rgba-black-strong py-5 px-4 principal-card pcGeral\">\r\n");
      out.write("\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-header\">\r\n");
      out.write("\t\t\t\t\t\t\t<h4 class=\"card-title py-3 font-weight-bold\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<strong>Eventos importantes</strong>\r\n");
      out.write("\t\t\t\t\t\t\t</h4>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-body cbGeral\">\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"pb-3\">- 17/Mai: Intregavel 1 - Web</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- </div> -->\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-8 mb-4\">\r\n");
      out.write("\t\t\t\t<!-- <div class=\"card card-image\" style=\"background-image: url(https://mdbootstrap.com/img/Photos/Horizontal/Nature/6-col/img%20%2873%29.jpg);\"> -->\r\n");
      out.write("\t\t\t\t<div\r\n");
      out.write("\t\t\t\t\tclass=\"text-black text-center align-items-center rgba-black-strong py-5 px-4 principal-card pcGeral pcPrincipal\">\r\n");
      out.write("\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-header\">\r\n");
      out.write("\t\t\t\t\t\t\t<h4 class=\"card-title py-3 font-weight-bold\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<strong>Avisos Acadêmicos</strong>\r\n");
      out.write("\t\t\t\t\t\t\t</h4>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-body cbGeral\">\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"pb-3\">- Implantamos o Rodriguinho, nosso robo que\r\n");
      out.write("\t\t\t\t\t\t\t\tauxilia na retirada de dúvidas</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"pb-3\">- Atualização do Rodriguinho</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- </div> -->\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-4 mb-4\">\r\n");
      out.write("\t\t\t\t<!-- <div class=\"card card-image\" style=\"background-image: url(https://mdbootstrap.com/img/Photos/Horizontal/City/6-col/img%20%2847%29.jpg);\"> -->\r\n");
      out.write("\t\t\t\t<div\r\n");
      out.write("\t\t\t\t\tclass=\"text-black text-center align-items-center rgba-black-strong py-5 px-4 principal-card pcGeral pcPrincipal\">\r\n");
      out.write("\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-header\">\r\n");
      out.write("\t\t\t\t\t\t\t<h4 class=\"card-title py-3 font-weight-bold\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<strong>Diário Tecnológico</strong>\r\n");
      out.write("\t\t\t\t\t\t\t</h4>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-body cbGeral\">\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"pb-3\">Microsoft irá abandonar exigência de\r\n");
      out.write("\t\t\t\t\t\t\t\talteração periódica de senhas Regras da fabricante servem de\r\n");
      out.write("\t\t\t\t\t\t\t\tbase em auditorias de empresas e mudança pode favorecer práticas\r\n");
      out.write("\t\t\t\t\t\t\t\tmais efetivas em companhias que adotam a prática.</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- </div> -->\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-4 mb-4\">\r\n");
      out.write("\t\t\t\t<!-- <div class=\"card card-image\" style=\"background-image: url(https://mdbootstrap.com/img/Photos/Horizontal/City/6-col/img%20%2847%29.jpg);\"> -->\r\n");
      out.write("\t\t\t\t<div\r\n");
      out.write("\t\t\t\t\tclass=\"text-black text-center align-items-center rgba-black-strong py-5 px-4 principal-card pcGeral pcPrincipal\">\r\n");
      out.write("\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-header\">\r\n");
      out.write("\t\t\t\t\t\t\t<h4 class=\"card-title py-3 font-weight-bold\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<strong>Aulas Ao VIVO</strong>\r\n");
      out.write("\t\t\t\t\t\t\t</h4>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-body cbGeral\">\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"pb-3\">- JAVA - Profº - Ronqui</p>\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"pb-3\">- Web - Profº - Isrrael</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- </div> -->\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-4 mb-4\">\r\n");
      out.write("\t\t\t\t<!-- <div class=\"card card-image\" style=\"background-image: url(https://mdbootstrap.com/img/Photos/Horizontal/City/6-col/img%20%2847%29.jpg);\"> -->\r\n");
      out.write("\t\t\t\t<div\r\n");
      out.write("\t\t\t\t\tclass=\"text-black text-center align-items-center rgba-black-strong py-5 px-4 principal-card pcGeral pcPrincipal\">\r\n");
      out.write("\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-header\">\r\n");
      out.write("\t\t\t\t\t\t\t<h4 class=\"card-title py-3 font-weight-bold\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<strong>Pendencias Pedagógicas</strong>\r\n");
      out.write("\t\t\t\t\t\t\t</h4>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-body cbGeral\">\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"pb-3\">- Prazo de devolução do livro XXXX vence dia\r\n");
      out.write("\t\t\t\t\t\t\t\t12/abr</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- </div> -->\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</section>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("<footer class=\"page-footer font-small blue ftGeral\">\r\n");
      out.write("\t<div class=\"footer-copyright text-center py-3\">\r\n");
      out.write("\t\t© 2019 Copyright: <a href=\"index.jsp\">RodriguinhoBot</a>\r\n");
      out.write("\t</div>\r\n");
      out.write("</footer>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}