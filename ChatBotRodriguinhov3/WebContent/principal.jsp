<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Principal</title>
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

	<section class="container">
		<div class="row mx-1">
			<div class="col-md-4 mb-4">
				<!-- <div class="card card-image" style="background-image: url(https://mdbootstrap.com/img/Photos/Others/img%20%2832%29.jpg);"> -->
				<div
					class="text-black text-center align-items-center rgba-black-strong py-5 px-4 principal-card pcGeral">
					<div>
						<div class="card-header">
							<h4 class="card-title py-3 font-weight-bold">
								<strong>Eventos importantes</strong>
							</h4>
						</div>
						<div class="card-body cbGeral">
							<p class="pb-3">- 17/Mai: Intregavel 1 - Web</p>
						</div>

					</div>
				</div>
				<!-- </div> -->
			</div>
			<div class="col-md-8 mb-4">
				<!-- <div class="card card-image" style="background-image: url(https://mdbootstrap.com/img/Photos/Horizontal/Nature/6-col/img%20%2873%29.jpg);"> -->
				<div
					class="text-black text-center align-items-center rgba-black-strong py-5 px-4 principal-card pcGeral pcPrincipal">
					<div>
						<div class="card-header">
							<h4 class="card-title py-3 font-weight-bold">
								<strong>Avisos Acadêmicos</strong>
							</h4>
						</div>
						<div class="card-body cbGeral">
							<p class="pb-3">- Implantamos o Rodriguinho, nosso robo que
								auxilia na retirada de dúvidas</p>
							<p class="pb-3">- Atualização do Rodriguinho</p>
						</div>
					</div>
				</div>
				<!-- </div> -->
			</div>
			<div class="col-md-4 mb-4">
				<!-- <div class="card card-image" style="background-image: url(https://mdbootstrap.com/img/Photos/Horizontal/City/6-col/img%20%2847%29.jpg);"> -->
				<div
					class="text-black text-center align-items-center rgba-black-strong py-5 px-4 principal-card pcGeral pcPrincipal">
					<div>
						<div class="card-header">
							<h4 class="card-title py-3 font-weight-bold">
								<strong>Diário Tecnológico</strong>
							</h4>
						</div>
						<div class="card-body cbGeral">
							<p class="pb-3">Microsoft irá abandonar exigência de
								alteração periódica de senhas Regras da fabricante servem de
								base em auditorias de empresas e mudança pode favorecer práticas
								mais efetivas em companhias que adotam a prática.</p>
						</div>
					</div>
				</div>
				<!-- </div> -->
			</div>
			<div class="col-md-4 mb-4">
				<!-- <div class="card card-image" style="background-image: url(https://mdbootstrap.com/img/Photos/Horizontal/City/6-col/img%20%2847%29.jpg);"> -->
				<div
					class="text-black text-center align-items-center rgba-black-strong py-5 px-4 principal-card pcGeral pcPrincipal">
					<div>
						<div class="card-header">
							<h4 class="card-title py-3 font-weight-bold">
								<strong>Aulas Ao VIVO</strong>
							</h4>
						</div>
						<div class="card-body cbGeral">
							<p class="pb-3">- JAVA - Profº - Ronqui</p>
							<p class="pb-3">- Web - Profº - Isrrael</p>
						</div>
					</div>
				</div>
				<!-- </div> -->
			</div>
			<div class="col-md-4 mb-4">
				<!-- <div class="card card-image" style="background-image: url(https://mdbootstrap.com/img/Photos/Horizontal/City/6-col/img%20%2847%29.jpg);"> -->
				<div
					class="text-black text-center align-items-center rgba-black-strong py-5 px-4 principal-card pcGeral pcPrincipal">
					<div>
						<div class="card-header">
							<h4 class="card-title py-3 font-weight-bold">
								<strong>Pendencias Pedagógicas</strong>
							</h4>
						</div>
						<div class="card-body cbGeral">
							<p class="pb-3">- Prazo de devolução do livro XXXX vence dia
								12/abr</p>
						</div>
					</div>
				</div>
				<!-- </div> -->
			</div>
		</div>
	</section>
</body>

<footer class="page-footer font-small blue ftGeral">
	<div class="footer-copyright text-center py-3">
		© 2019 Copyright: <a href="index.jsp">RodriguinhoBot</a>
	</div>
</footer>
</html>
