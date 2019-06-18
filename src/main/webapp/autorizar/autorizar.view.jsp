<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">

	<link rel="stylesheet" href="./css/style.css">

	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script type="text/javascript" src="./autorizar/autorizar.controller.js"></script>
	<script type="text/javascript" src="./services/service.js"></script>

	<title>Autenticar Eleitor</title>
</head>
<body>    
	<div class="tudo">
		<div id="voto" class="controleVoto">
			<form class="container" action="/Eleicao/autorizar" id="form" method="POST">
				<div class="voto">
					<a class="lg_pass">Nº Titulo</a>
					<input type="text" name="usuario" id="usuario" placeholder="XXXXXXXXXXXX" value="${requestScope.usuario}" class="input"/>
				</div>            
				<div class="voto">
					<a class="lg_pass">Nome</a>   
					<input type="text" id="nome" name="javotou" value="${requestScope.nome}" class="input" readonly/ >
					<input type="hidden" id="func" name="func" value="${sessionScope.titulo}" readonly/>  
					<input type="hidden" id="nivel" name="nivel" value="${sessionScope.nivel}" readonly/>
				</div>
				<div class="voto">	
					<a class="lg_pass">Autorizado</a>   
					<input type="text" id="liberado" name="liberado" value="${requestScope.liberado}" class="input" readonly/>
				</div>
				<div class="voto">	
					<a class="lg_pass">Ja Votou</a>   
					<input type="text" id="javotou" name="javotou" value="${requestScope.javotou}" class="input" readonly/>
				</div>
		</div>
					<div class="centerContent">
						<button class="btn btnS" onclick="validar()">Validar</button>
						<button class="btn btnVoltar" onclick="backPage('func')">Voltar</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	
	
</body>
</html>