<%@ page language="java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
<%@page import="dao.CandidatoDao"%>
<%@page import="model.Candidato"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="./css/style.css">

<script type="text/javascript" src="./services/service.js"></script>
<title>Contagem Votos</title>
</head>
<body>
<div id="tudo" class="centerContent">
        <div id="logEleitor" class="controleL">
			<% List<Candidato> candidatos = new CandidatoDao().findAll(); %>
				<table>
					
					<% for(Candidato cand : candidatos) { %>
					<ul>
						<li><b>Numero:   </b>	<%=cand.getNumero() %></li>
						<li><b>Nome: 	 </b>	<%=cand.getNome() %></li>
						<li><b>Votos: 	 </b>	<%=cand.getVotos() %></li>
					</ul>
					<%} %>
		
					<button class="btn btnVoltar" onclick="goTo()">VOLTAR</button>
				</table>
		</div>
				
</body>
</html>