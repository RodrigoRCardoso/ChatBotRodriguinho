<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Sucesso!</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Lato'  type='text/css'>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body class="img-fundo">
    <div class="jumbotron divRedirect">
        <h3>Seu cadastro foi realizado com sucesso!</h3>
        <button class="btn btn-lg btn-primary btn-block" type="button" onclick="redirectLogin()">Ir para Login</button>
    </div>
</body>
<script>
    function redirectLogin(){
        window.location.href = "login.jsp";
        return;
    };
</script>