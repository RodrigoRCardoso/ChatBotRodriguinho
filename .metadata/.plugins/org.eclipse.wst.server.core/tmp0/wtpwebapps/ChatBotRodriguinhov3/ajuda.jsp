<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br" dir="ltr">
<head>
<meta charset="UTF-8">
<title>Ajuda</title>
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
		<p class="text-center">FAQs</p>
	</div>

	<div id="divAjuda" class="container">
		<div class="row">
			<div class="col-md-6">
				<h6 class="text-center">FAQ</h6>
				<ul id="listaFAQ" class="list-group list-group-flush">
					<li class="list-group-item"><a href="">Pergunta 1</a></li>
					<li class="list-group-item"><a href="">Pergunta 2</a></li>
					<li class="list-group-item"><a href="">Pergunta 3</a></li>
					<li class="list-group-item"><a href="">Pergunta 4</a></li>
					<li class="list-group-item"><a href="">Pergunta 5</a></li>
				</ul>
			</div>

			<div class="col-md-6">
				<h6 class="text-center">Contato</h6>
				<ul class="list-group list-group-flush">
					<li id="contatoEmail" class="list-group-item">Email:
						teste@gmail.com</li>
					<li id="contatoFone" class="list-group-item">Telefone: +55
						(11) 98765-4321</li>
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
