<%-- 
    Document   : fotoAdd
    Created on : 01/06/2020, 18:22:30
    Author     : dryro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multiscrap - Fotos</title>
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
        
        <%
            String idAlbum = request.getParameter("id").trim();
            String album = request.getParameter("album").trim();
        %>
        
        <div class="conteudoAdmin" style="padding-top: 20px;">
            <form action="salvaFotoNoAlbum" method="post" name="formAlbum"
                  style="margin-top: 200px; margin-left: 430px; " 
                  enctype="multipart/form-data">
                <h3 style="font-size: 20px">Adicionar foto em <%= album %></h3>
                <b style="font-size: 18px;">Tema: </b>
                <input type="text" name="descricao" placeholder="Descrição" 
                       style="text-align: center; margin-left: 18px; width: 200px; font-size: 15px;"> <br><br>
                <input type="file" name="foto" accept="image/png, image/jpeg" 
                       title="Clique para adicionar uma imagem" style="font-size: 15px">
                <br><br>
                <input type="hidden" name="idAlbum" value="<%= idAlbum %>">
                <input type="hidden" name="tema" value="<%= album %>">
                <input type="submit" value="Adicionar Foto" class="btnAddAltAlbum" 
                       style="font-size: 16px;">
            </form>
        </div>
    </body>
</html>
