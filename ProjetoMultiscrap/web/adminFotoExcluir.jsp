<%-- 
    Document   : fotoExcluir
    Created on : 02/06/2020, 17:47:12
    Author     : dryro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="conexao" scope="page" class="Conexao.Conexao" />
<jsp:useBean id="album" scope="page" class="Control.ControlFotos" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multiscrap - Foto</title>
        <link rel="stylesheet" href="style.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <div class="menuAdmin">
            <a href="adminAlbum.jsp"><i class='fas fa-book'></i> Álbum</a>
            <a href="adminFotos.jsp"><i class='fas fa-camera'></i> Fotos</a>
            <a href="fechaSessao" style="margin-top: 450px"><i class='fas fa-sign-out-alt'></i> Sair</a>
        </div>
        <div class="conteudoAdmin" style="text-align: center; margin-top: 250px; font-size: 22px;">
            <%
                int id = Integer.parseInt(request.getParameter("id").trim());
                int idAlbum = Integer.parseInt(request.getParameter("album").trim());
                
                if(album.excluirFoto(id, idAlbum)){
            %>
            
                    <h4>Foto excluída com sucesso!</h4>
                    
            <%
                } else {
            %>        
            
                    <h4>Não foi possível fazer a exclusão da foto!</h4>
                    
            <%  } 
                conexao.fechar();
            %>
        </div>
    </body>
</html>