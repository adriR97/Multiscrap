<%-- 
    Document   : login
    Created on : 24/05/2020, 18:24:44
    Author     : dryro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"> 
        <title>Multiscrap - Login</title>
    </head>
    <body>
        <div id="divLogin">
            <img src="imagens/logo.jpeg" style="width:20%; margin-left: 40%;"><br>
            <form action="admin.jsp">
                <input type="text" class="inputUsuarioSenha" 
                       name="usuario" placeholder="Usuário"><br>
                <input type="password"  class="inputUsuarioSenha" 
                       name="senha" placeholder="Senha"><br>
                <input type="submit" value="Entrar" id="btnLogin">
            </form>
        </div>
    </body>
</html>
