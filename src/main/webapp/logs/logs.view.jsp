<%@ page language="java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
<%@page import="dao.LogDao"%>
<%@page import="model.LogInfo"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/bootstrap.min.css" type="text/css"/>
<link rel="stylesheet" href="./css/bootstrap-responsive.min.css" type="text/css"/>
<link rel="stylesheet" href="./css/styles.css" type="text/css"/>
<script type="text/javascript" src="./services/service.js"></script>
<title>Registros da Cessão</title>
</head>
<body>
<% List<LogInfo> logs = new LogDao().findAll(); %>
	<table>
	    <!-- percorre contatos montando as linhas da tabela -->
	    <% for(LogInfo log : logs) { %>
	        <tr>
	           	<td><b>LogId: </b>		<%=log.getLogId() %></td>
				<td><b>Titulo: 	 </b>	<%=log.getUserId() %></td>
				<td><b>Hora: 	</b>	<%=log.getActionTime() %></td>
				<td><b>Descrição:</b> 	<%=log.getDescription() %></td>
	        </tr>
		<%} %>
		
		<button class="other" onclick="goTo()">VOLTAR</button>
	</table>
</body>
</html>