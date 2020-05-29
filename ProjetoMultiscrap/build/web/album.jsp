<%-- 
    Document   : album
    Created on : 25/05/2020, 17:46:13
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
        <script>
            function filtrarLivros() {
                var input, filter, table, tr, td, i, texto;
                input = document.getElementById("filtroLivro");
                filter = input.value.toUpperCase();
                table = document.getElementById("tabelaDeLivros");
                tr = table.getElementsByTagName("tr");

                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[0];
                    if (td) {
                        texto = td.textContent || td.innerText;
                        if (texto.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
        </script>
    </head>
    <body>
        <div class="menuAdmin">
            <a href="album.jsp"><i class='fas fa-book'></i> Álbuns</a>
            <a href="#"><i class='fas fa-camera'></i> Fotos</a>
            <a href="#" style="margin-top: 450px"><i class='fas fa-sign-out-alt'></i> Sair</a>
        </div>
        <div class="conteudoAdmin">
            <a href="albumAdd.jsp" class="btnAddAlbum">Adicionar Álbum</a>  
            <input type="text" id="filtroLivro" onkeyup="filtrarLivros()" 
                   placeholder="Procurar por tema">
        </div>        
    </body>
</html>
