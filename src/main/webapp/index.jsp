<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">		
        <meta name="viewport" content="width=device-width, initial-scale=1.0">         
        <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
        
		<link rel="stylesheet" href="./css/style.css">
		
        <script type="text/javascript" src="./services/jquery.js"></script>
        <script type="text/javascript" src="./services/service.js"></script>
		
		<title>Votação</title>
		
		</head>
	<body>
	<div id="tudo" class="centerContent">
        <div id="logEleitor" class="controleL">
            <h2 class="ltitulo">Login</h2>
				<form class="container" action="/Eleicao/autenticar" method="POST">
					<div id="row">
						<div class="row">
							<input type="text" name="titulo" id="titulo" required class="input" placeholder="Nº Titulo"/>
						</div>
						<div class="row">
							<input type="password" name="senha" id="senha" required class="input" placeholder="Senha"/>
						</div>
					</div>            
				<button class="btn btnS" type="submit">Entrar</button>
				</form>
		</div>
	</div>	
	</body>
</html>