<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Cadastro</title>
    <link rel="icon" href="images/icon.jpg">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" />
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Lato'  type='text/css'>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
</head>
<body class="img-fundo">
    <div class="divFormLogin">
        <form class="form-signin" method="POST" action="CadastroUsu">
            <div class="form-group">
                <label for="nome" class="lblCadastro">Nome: </label>
                <input type="text" id="nome" name="nomeAluno" class="form-control" placeholder="Insira o seu nome completo" required>
            </div>
            <div class="form-group">
                <label for="rmAluno" class="lblCadastro">RM: </label>
                <input type="text" id="rmAluno" name="rmAluno" class="form-control" placeholder="Insira o seu RM" maxlength="5" onkeydown="soNumeros(this)" onblur="soNumeros(this)">
            </div>
            <div class="form-group">
                <label for="email" class="lblCadastro">Email: </label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Insira o seu email" required>
            </div>
            <div class="form-group">
                <label for="usuario" class="lblCadastro">Usuário: </label>
                <input type="text" id="usuario" name="usuario" class="form-control" placeholder="Insira o seu usuario" required>
            </div>
            <div class="form-group">
                    <label for="senha" class="lblCadastro">Senha: </label>
                <input type="password" id="senha" name="senha" class="form-control" placeholder="Insira a sua senha" required>
            </div>
            <div class="form-group" style="margin-bottom: 30px;">
                    <label for="dataNascimento" class="lblCadastro">Data de Nascimento: </label>
                <input data-provide="datepicker" id="datepicker" name="dataNascimento" class="form-control" placeholder="Insira a sua data de nascimento" data-date-viewmode="years" required>
            </div>
            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Concluir</button>
        </form>
    </div>
</body>

<script>
    $(document).ready(function () {
        $("#datepicker").datepicker({
            format: 'mm/dd/yyyy',
            autoclose: true,
            languague: "pt-br",
            orientation: "bottom",
            startView: "years",            
            minViewMode: "days",
            maxViewMode: "years"
        });
    });

    function soNumeros(v) {
    v.value = v.value.replace(/\D/g, "");
    return;
    }
</script>
</html>