<%-- 
    Document   : resultadoAlbum
    Created on : 27/05/2020, 18:04:59
    Author     : dryro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="conexao" scope="page" class="Conexao.Conexao" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multiscrap - Álbuns</title>
        <link rel="stylesheet" href="style.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <div class="menuAdmin">
            <a href="adminAlbum.jsp"><i class='fas fa-book'></i> Álbuns</a>
            <a href="adminFotos.jsp"><i class='fas fa-camera'></i> Fotos</a>
            <a href="fechaSessao" style="margin-top: 450px"><i class='fas fa-sign-out-alt'></i> Sair</a>
        </div>
        <div class="conteudoAdmin" style="text-align: center; margin-top: 250px; font-size: 22px;">
            <h4><%=request.getAttribute("Mensagem")%></h4>
            <% conexao.fechar(); %>
            <a href="adminAlbum.jsp" class="btnErro">Lista de Álbuns</a>
            <a href="adminAlbumAdicionar.jsp" class="btnErro">Adicionar Novo Álbum</a>
        </div>
    </body>
</html>
