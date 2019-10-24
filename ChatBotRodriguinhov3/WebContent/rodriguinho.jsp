<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br" dir="ltr">
<head>
<meta charset="UTF-8">
<title>ChatBot Rodriguinho</title>
<link rel="icon" href="images/icon.jpg">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href='http://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main.css">

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
		<h5 class="text-center">
			The Future is Now
			</h5>
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
		<p class="text-center">Online Class - Dúvidas - Rodriguinho</p>
	</div>

	<section class="container">
		<h2 class="text-center titleBot">Chatbot Rodriguinho</h2>
		<div class="chat-container"></div>
		<input type="text" id="question" name="question" class="field"
			placeholder="Escreva a sua dúvida" />
		<div class="controls">
			<button class="button-chat" id="sendQuestion">
				<i class="fas fa-paper-plane"></i>
			</button>

			<button class="button-chat" id="recordButton">
				<i class="fas fa-microphone"></i>
			</button>

			<button class="button-chat" id="stopButton" disabled>
				<i class="fas fa-stop"></i>
			</button>
			<button id="getVoiceButton" style="display: none"></button>
			<button id="pauseButton" style="display: none" disabled></button>
		</div>
	</section>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script	src="https://cdn.rawgit.com/mattdiamond/Recorderjs/08e7abd9/dist/recorder.js"></script>
	<script type="text/javascript" src="scripts/assistant.js"></script>
	<script type="text/javascript" src="scripts/tts.js"></script>
	<script type="text/javascript" src="scripts/stt.js"></script>
</body>

<footer class="page-footer font-small blue ftGeral">
	<div class="footer-copyright text-center py-3">
		© 2019 Copyright: <a href="index.jsp">RodriguinhoBot</a>
	</div>
</footer>
</html>
