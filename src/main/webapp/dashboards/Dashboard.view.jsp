<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Zona Eleitoral</title>
        <meta charset="UTF-8">        
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link rel="stylesheet" href="./css/style.css">
		
        <script type='text/javascript' src='./dashboards/Dashboard.controller.js'></script>
        <script type="text/javascript" src="./services/service.js"></script>
    </head>
    
    <body>
	<div id="tudo" class="centerContent">
        <div id="logEleitor" class="controleL">
            <h2 class="ltitulo">Menu</h2>
				<form class="container" action="/Eleicao/redirect" method="POST">    
                     
					<button class="btn btnS" onclick="redirect('votacao')">Votar</button>

					<button style="display: none;" id="aut" class="btn btnVoltar" onclick="redirect('autorizar')">Autenticar</button>
					<button style="display: none;" id="computarVotos" class="btn btnVerif" onclick="redirect('computarVotos')">Computar Votos</button>
					
					<button class="btn btnS" onclick="backpage()">Voltar</button>

					<input type="hidden" name="titulo" id="titulo" value="${sessionScope.titulo}"/>
					<input type="hidden" name="nivel" id="nivel" value="${sessionScope.nivel}"/>
					<input type="hidden" name="pagina" id="pagina"/>
				</form>
		</div>
	</div>
    </body>
</html>
