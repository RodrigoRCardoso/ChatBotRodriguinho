<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br" dir="ltr">
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="icon" href="images/icon.jpg">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href='http://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/style.css">
</head>
<body class="img-fundo">
	<div class="divFormLogin">
		<h4 class="card-title text-center" style="margin-right: 10px">Login</h4>
		<form class="form-signin" method="POST" action="ValidaLogin">
			<div class="form-label-group formLogin">
				<input type="text" id="inputUsuario" name="inputUsuario"
					class="form-control" placeholder="Usuário/E-mail" required
					autofocus>
			</div>

			<div class="form-label-group formLogin">
				<input type="password" id="inputSenha" name="inputSenha"
					class="form-control" placeholder="Senha" maxlength="12" required>
			</div>

			<div class="row">
				<button
					class="btn btn-lg btn-primary btn-block text-uppercase btnLogin"
					type="submit">Acessar</button>
				<button
					class="btn btn-lg btn-primary btn-block text-uppercase btnLogin btnCadastrar"
					type="button" onclick="telaCadastrar()">Cadastrar</button>
			</div>

			<div class="custom-control mb-3 divEsqueciSenha">
				<a href="emDev.jsp" class="linkEsqueciSenha">Esqueceu a senha?</a>
			</div>

			<div class="custom-control mb-3 divEsqueciSenha"
				style="margin: 20px 0 0 21%;">
				<a href="index.jsp" class="linkEsqueciSenha">Voltar para home</a>
			</div>
		</form>
	</div>
</body>
<script type="text/javascript">
	// function soNumeros(v) {
	//     v.value = v.value.replace(/\D/g, "");
	//     return;
	// }

	function telaCadastrar(v) {
		window.location.href = "cadastro.jsp";
		return;
	}
</script>
</html>