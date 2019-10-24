<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br" dir="ltr">
<head>
<meta charset="UTF-8">
<title>Online Class</title>
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
	<%
		String usuario = (String) session.getAttribute("usuario");
		if (usuario == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	<div id="divBground" class="bg">
		<a href="index.jsp" class="txtLogout btnLog">Logout</a>
		<h2 class="text-center logo">TFIN</h2>
		<h5 class="text-center">The Future is Now</h5>
	</div>

	<div id="divCabecalho-nav">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<div class="col-md-2">
						<a class="nav-item nav-link active" href="principal.jsp">Home</a>
					</div>
					<div class="col-md-2">
						<a class="nav-item nav-link active" href="cursos.jsp">Cursos</a>
					</div>
					<div class="col-md-2">
						<a class="nav-item nav-link active" href="ajuda.jsp">Contato</a>
					</div>
					<div class="col-md-3">
						<a class="nav-item nav-link active" href="quemSomos.jsp">Sobre
							o Chat</a>
					</div>
					<div class="col-md-3">
						<a class="nav-item nav-link active" href="onlineClass.jsp">Online
							Class</a>
					</div>
				</div>
			</div>
		</nav>
	</div>

	<div id="divCabecalho">
		<p class="text-center">Online Class</p>
	</div>

	<div class="divNavegacao container">
		<div class="row">
			<div class="col-md-3 img-link-2">
				<a href="emDev.jsp"> <img src="images/apostila.png"
					class="iconLink" alt="Apostila das aulas"> <legend>Aulas</legend>
				</a>
			</div>

			<div class="col-md-3 img-link-2">
				<a href="onlineClassDuvidas.jsp"> <img src="images/head.png"
					class="iconLink" alt="Dúvidas"> <legend>Dúvidas</legend>
				</a>
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