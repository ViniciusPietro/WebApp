<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="./css/style.css">
	
	<script type="text/javascript" src="./votacao/votacao.controller.js"></script>
	<script type="text/javascript" src="./services/service.js"></script>
	
	<title>Voto</title>
</head>
<body>
	<div class="tudo">
        <img src="./votacao/images/0.png" alt="" class="img" id="imgCandidato">
		<div  class="controleVoto">
			<form class="container" method="POST" action="/Eleicao/votar">
				<h2 class="ltitulo">Votar</h2>
				<div class="voto">
					<input type="text" placeholder="Nº do Candidato" name="candidato" id="candidato" oninput="changeInput()" class="input">
				</div>
				<div class="voto">
					<input type="text" placeholder="Partido" name="partido" id="partido" class="input" readonly>
				</div>
				<div class="voto">
					<input type="text" id="user" name="user" value="${sessionScope.titulo}" readonly class="input">	
					<input type="hidden" id="voto" name="voto" readonly>
				</div>
				<div class="centerContent">
					<button class="btn btnS" onclick="vote()">CONFIRMA</button>    
					<button class="btn btnVerif" onclick="vote()">BRANCO</button>
					<button class="btn btnVoltar" onclick="backPage('titulo')">VOLTAR</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>