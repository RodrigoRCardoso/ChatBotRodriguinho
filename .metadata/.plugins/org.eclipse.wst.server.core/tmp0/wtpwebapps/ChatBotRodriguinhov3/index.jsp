<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="icon" href="images/icon.jpg">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/style.css">
</head>
<body id="fundo">
    <div id="divBground" class="bg">
        <a href="login.jsp" class="txtLogin btnLog">Login</a>
        <h2 class="text-center logo">TFIN</h2>
        <h5 class="text-center">The Future is Now</h5>
    </div>

    <div id="divCabecalho-nav">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <div class="col-md-3"><a class="nav-item nav-link active" href="index.jsp">Home</a></div>
                    <div class="col-md-3"><a class="nav-item nav-link active" href="cursos.jsp">Cursos</a></div>
                    <div class="col-md-3"><a class="nav-item nav-link active" href="ajuda.jsp">Contato</a></div>
                    <div class="col-md-3"><a class="nav-item nav-link active" href="quemSomos.jsp">Sobre o Chat</a></div>
                </div>
            </div>
        </nav>
    </div>

    <div class="container my-3">
            <div class="principal-card text-center col-12 col-sm-12 col-md-12 col-lg-12 border border-dark rounded divsindex">
                <h2 class="card-title tlIndex">Tem Dúvidas em Matemática?</h2>
                <div class="card-body cbDuvidas">
                    <p class="card-text">Rodriguinho tem as as respostas que você precisa!</p>
                    <a href="quemSomos.jsp" class="btn corbotao">Conheça o nosso Bot</a>
                </div>
            </div>


        <section class="row my-4">
            <div class="col-12 col-sm-12 col-md-6 col-lg-4 my-1">
                <div class="principal-card border border-dark">
                    <img src="./images/math.jpg" class="card-img-top" alt="...">
                    <div class="card-body cbIndex border-top border-dark">
                    <h5 class="card-title ctIndex">Você sabe o que é Função?</h5>
                    <p class="card-text">Toda vez que temos dois conjuntos e algum tipo de associação entre eles, que faça corresponder a todo elemento do primeiro conjunto um único elemento do segundo, ocorre uma função.</p>
                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-12 col-md-6 col-lg-4 my-1">
                <div class="principal-card border border-dark">
                    <img src="./images/brinquedo.jpg" class="card-img-top" alt="...">
                    <div class="card-body cbIndex border-top border-dark">
                    <h5 class="card-title ctIndex">Você sabe o que são Derivadas?</h5>
                    <p class="card-text">No cálculo, a derivada em um ponto de uma função representa a taxa de variação instantânea em sua relação neste ponto. Um exemplo típico é a função velocidade que representa a taxa de variação do espaço.</p>
                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-12 col-md-6 col-lg-4 my-1">
                <div class="principal-card border border-dark">
                    <img src="./images/graficos.jpg" class="card-img-top" alt="...">
                    <div class="card-body cbIndex border-top border-dark">
                    <h5 class="card-title ctIndex">Você sabe o que são Integrais?</h5>
                    <p class="card-text">No cálculo, a integral de uma função foi criada originalmente para determinar a área sob uma curva no plano cartesiano. ela também surge naturalmente em dezenas de problemas da física.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>

</body>

<footer class="page-footer font-small blue ftGeral">
    <div class="footer-copyright text-center py-3">© 2019 Copyright:
        <a href="index.jsp">RodriguinhoBot</a>
    </div>
</footer>
</html>
