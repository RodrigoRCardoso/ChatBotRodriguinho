<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Sobre o Chat</title>
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
		<p class="text-center">Sobre o ChatBot</p>
	</div>

	<div class="container my-3 divContQs">
		<div
			class="principal-card text-center col-12 col-sm-12 col-md-12 col-lg-12 border border-dark rounded divqs pcGeral">
			<div class="card-body cbGeral">
				<h2 class="card-title py-1">
					Rodriguinho
					</h1>
			</div>
		</div>

		<div
			class="principal-card text-center col-12 col-sm-12 col-md-12 col-lg-12 border border-dark rounded mt-1 pcGeral pcQs">
			<div class="card-body cbGeral">
				<h4 class="card-title py-1">O que é o Rodriguinho?</h4>
				<p>O Rodriguinho é o seu assitente pessoal, que interage com
					você por voz e que tenta te ajudar da melhor forma na área de
					matemática, te explicando o que você necessita, para que a
					matemática possa ficar cada vez mais fácil e mais agradável de se
					estudar.</p>
			</div>
		</div>

		<div
			class="principal-card text-center col-12 col-sm-12 col-md-12 col-lg-12 border border-dark rounded mt-1 pcGeral pcQs">
			<div class="card-body cbGeral">
				<h4 class="card-title py-1">Como surgiu o Rodriguinho?</h4>
				<p>O Rodriguinho surgiu com o intuito de apoiar e ajudar
					qualquer estudante que tenha dúvidas em matemática, deixando a
					experiência do estudo dessa matéria muito melhor. O estudante de
					forma bastante intuitiva faz uma pergunta para o Rodriguinho, e em
					forma de texto ele responde essa pergunta e tenta esclarecer o
					máximo de perguntas que forem feitas a ele.</p>
			</div>
		</div>

		<div
			class="principal-card text-center col-12 col-sm-12 col-md-12 col-lg-12 border border-dark rounded mt-1 pcGeral pcQs">
			<div class="card-body cbGeral">
				<h4 class="card-title py-1">Como ter acesso ao Rodriguinho?</h4>
				<p>Para conversar com o Rodriguinho, basta criar uma conta no
					site e pronto!</p>
				<a href="ajuda.jsp" class="btn btnDuvidas">Tire agora mesmo suas
					dúvidas</a>
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
