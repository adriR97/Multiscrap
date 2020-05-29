<%-- 
    Document   : admin
    Created on : 24/05/2020, 19:20:42
    Author     : dryro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="conexao" scope="page" class="Conexao.Conexao" />
<jsp:useBean id="user" scope="page" class="Control.ControlUsuario" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multiscrap - Admin</title>
        <link rel="stylesheet" href="style.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <%
            String usuario = request.getParameter("usuario");
            String senha = request.getParameter("senha");
                
            if(user.verificaUsuario(usuario, senha)){
                HttpSession sessao = request.getSession();
                sessao.setAttribute("usuario", usuario);
                sessao.setAttribute("senha", senha);                
         %>
         
                <div class="menuAdmin">
                    <a href="album.jsp"><i class='fas fa-book'></i> Álbuns</a>
                    <a href="#"><i class='fas fa-camera'></i> Fotos</a>
                    <a href="#" style="margin-top: 450px"><i class='fas fa-sign-out-alt'></i> Sair</a>
                </div>
        
                <div class="conteudoAdmin" style="text-align: center">
                    <h3 style="margin-top: 270px; font-size: 22px;">Bem-vindo(a) 
                            <%= session.getAttribute("usuario") %></h3>            
                </div>
                
         <%
            } else {
         %>
         
                <div style="text-align: center; margin-top: 270px;">
                    <h3>Usuário ou senha incorretos</h3>
                    <a href="login.jsp" class="btnErro">Voltar para página de login</a>
                </div>
         
         <% }  
            conexao.fechar();
         %>
    </body>
</html>
