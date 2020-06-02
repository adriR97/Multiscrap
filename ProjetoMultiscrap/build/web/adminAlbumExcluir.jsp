<%-- 
    Document   : albumExcluir
    Created on : 01/06/2020, 16:48:07
    Author     : dryro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="conexao" scope="page" class="Conexao.Conexao" />
<jsp:useBean id="album" scope="page" class="Control.ControlFotos" />
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
            <a href="adminAlbum.jsp"><i class='fas fa-book'></i> Álbum</a>
            <a href="adminFotos.jsp"><i class='fas fa-camera'></i> Fotos</a>
            <a href="fechaSessao" style="margin-top: 450px"><i class='fas fa-sign-out-alt'></i> Sair</a>
        </div>
        <div class="conteudoAdmin" style="text-align: center; margin-top: 250px; font-size: 22px;">
            <%
                int id = Integer.parseInt(request.getParameter("id").trim());
                
                if(album.excluirAlbum(id)){
            %>
            
                    <h4>O álbum foi excluído com sucesso!</h4>
                    
            <%
                } else {
            %>        
            
                    <h4>Não foi possível fazer a exclusão do álbum!</h4>
                    
            <%  } 
                conexao.fechar();
            %>
        </div>
    </body>
</html>
