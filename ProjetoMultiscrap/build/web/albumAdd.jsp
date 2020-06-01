<%-- 
    Document   : addAlbum
    Created on : 27/05/2020, 17:37:48
    Author     : dryro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multiscrap - Álbuns</title>
        <link rel="stylesheet" href="style.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <script>
            function validar(){
                var x = document.forms["formAlbum"]["tema"].value;
                
                if (x == "" || x == null) {
                    alert("Preencha o campo Tema");
                    return false;
                }
            }            
        </script>
    </head>
    <body>
        <%@ page import="javax.servlet.http.*" %>
        <div class="menuAdmin">
            <a href="album.jsp"><i class='fas fa-book'></i> Álbum</a>
            <a href="#"><i class='fas fa-camera'></i> Fotos</a>
            <a href="#" style="margin-top: 450px"><i class='fas fa-sign-out-alt'></i> Sair</a>
        </div>
        
        <div class="conteudoAdmin"> 
            <form action="salvaAlbumFoto" method="post" name="formAlbum"
                  style="margin-top: 200px; margin-left: 430px; " 
                  onsubmit="return validar()" enctype="multipart/form-data">
                <h3 style="font-size: 20px">Cadastrar novo álbum</h3>
                <b style="font-size: 18px;">Tema: </b>
                <input type="text" name="tema" placeholder="Tema" 
                       style="text-align: center; margin-left: 18px; width: 200px; font-size: 15px;"> <br><br>
                <b style="font-size: 18px">Selecione a foto de capa: </b>                
                <input type="file" name="foto" accept="image/png, image/jpeg" 
                       title="Clique para adicionar uma imagem" style="font-size: 15px"><br><br>
                <input type="hidden" name="opcao" value="1"><br>
                <input type="submit" value="Cadastrar Álbum" class="btnAddAltAlbum" style="font-size: 16px;">
            </form> 
        </div>
    </body>
</html>
