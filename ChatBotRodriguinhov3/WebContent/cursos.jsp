<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br" dir="ltr">
<head>
<meta charset="UTF-8">
<title>Cursos</title>
<link rel="icon" href="images/icon.jpg">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href='http://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/style.css">
</head>
<body id="fundo">
	<div id="divBground" class="bg">
		<%
			String usuario = (String) session.getAttribute("usuario");
			if (usuario == null) {
				out.print("<a href=\"login.jsp\" class=\"txtLogin btnLog\">Login</a>");
			} else {
				out.print("<a href=\"finalizaSessao.jsp\" class=\"txtLogout btnLog\">Logout</a>");
			}
		%>
		<h2 class="text-center logo">TFIN</h2>
		<h5 class="text-center">The Future is Now</h5>
	</div>

	<div id="divCabecalho-nav">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<%
						if (usuario != null) {
							out.print(
									"<div class=\"col-md-2\"><a class=\"nav-item nav-link active\" href=\"principal.jsp\">Home</a></div>");
							out.print(
									"<div class=\"col-md-2\"><a class=\"nav-item nav-link active\" href=\"cursos.jsp\">Cursos</a></div>");
							out.print(
									"<div class=\"col-md-2\"><a class=\"nav-item nav-link active\" href=\"ajuda.jsp\">Contato</a></div>");
							out.print(
									"<div class=\"col-md-3\"><a class=\"nav-item nav-link active\" href=\"quemSomos.jsp\">Sobre o Chat</a></div>");
							out.print(
									"<div class=\"col-md-3\"><a class=\"nav-item nav-link active\" href=\"onlineClass.jsp\">Online Class</a></div>");
						} else {
							out.print(
									"<div class=\"col-md-3\"><a class=\"nav-item nav-link active\" href=\"index.jsp\">Home</a></div>");
							out.print(
									"<div class=\"col-md-3\"><a class=\"nav-item nav-link active\" href=\"cursos.jsp\">Cursos</a></div>");
							out.print(
									"<div class=\"col-md-3\"><a class=\"nav-item nav-link active\" href=\"ajuda.jsp\">Contato</a></div>");
							out.print(
									"<div class=\"col-md-3\"><a class=\"nav-item nav-link active\" href=\"quemSomos.jsp\">Sobre o Chat</a></div>");
						}
					%>
				</div>
			</div>
		</nav>
	</div>

	<div id="divCabecalho">
		<p class="text-center">Cursos</p>
	</div>

	<div id="divAjuda" class="container">
		<div class="row">
			<div class="col-md-6">
				<h6 class="text-center">Cursos</h6>
				<ul id="listaFAQ" class="list-group list-group-flush">
					<%
						//Cursos[] lstCursos = new Cursos[];
						//buscaCursos(lstCursos);

						//for(int i = 0; i < lstCursos.Length; i++){
						//out.print("<li class=\"list-group-item\">" + lstCursos[i].Nome + "</li>\");
						//}
					%>
				</ul>
			</div>
		</div>
	</div>

</body>

<footer class="page-footer font-small blue ftGeral">
	<div class="footer-copyright text-center py-3">
		© 2019 Copyright: <a href="index.jsp">RodriguinhoBot</a>
	</div>
</footer>
</html>
