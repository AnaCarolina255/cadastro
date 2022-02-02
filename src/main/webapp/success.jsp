<%@page import="cadastro.InfPessoas"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesucesso.css">
  
    <title>Tela de Sucesso</title>
</head>
<body>
    <%
    	InfPessoas pessoa = (InfPessoas) request.getAttribute("pessoa");
    %>
    <main>
        <h1>${generos } ${pessoa.nome } ${pessoa.sobrenome }, ${horaAgora } ! Obrigado por realizar o cadastro em nosso site.</h1>
    </main>
    <section class="images">
        <img src="mobilesuccess.svg" alt="mobile">
        <div class="circle"></div>
    </section>

</body>
</html>