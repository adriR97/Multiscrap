<%-- 
    Document   : fotos
    Created on : 01/06/2020, 17:09:44
    Author     : dryro
--%>

<%@page import="Bean.BeanAlbum"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<jsp:useBean id="conexao" scope="page" class="Conexao.Conexao" />
<jsp:useBean id="album" scope="page" class="Control.ControlFotos" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multiscrap - Fotos</title>
        <link rel="stylesheet" href="style.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <script>
            function filtrarAlbuns() {
                var input, filter, table, tr, td, i, texto;
                input = document.getElementById("filtroAlbumFotos");
                filter = input.value.toUpperCase();
                table = document.getElementById("tabelaDeAlbuns");
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
        <style>
            table, td, th {  
                border: 1px solid black;
                text-align: left;
            }
            
            table {
                border-collapse: collapse;
                width: 50%;
                margin: 0px auto;
            }

            th, td {
                padding: 15px;
            }
            
        </style>
        
    </head>
    <body>
        <div class="menuAdmin">
            <a href="adminAlbum.jsp"><i class='fas fa-book'></i> Álbuns</a>
            <a href="adminFotos.jsp"><i class='fas fa-camera'></i> Fotos</a>
            <a href="fechaSessao" style="margin-top: 450px"><i class='fas fa-sign-out-alt'></i> Sair</a>
        </div>
        <div class="conteudoAdmin" style="padding-top: 20px;">
            <input type="text" id="filtroAlbumFotos" onkeyup="filtrarAlbuns()" 
                   placeholder="Procurar por tema">
            
            <%
                ArrayList colecao;
                BeanAlbum albumUni;
                colecao = album.listarAlbuns();  
            %>
            
                <table style="margin-top: 30px !important" id="tabelaDeAlbuns">
                    <tr style="background: #FA5882; font-size: 18px;">
                        <th style="width: 70%;">Álbum</th>
                        <th style="text-align: center">Fotos</th>
                    </tr> 
            
            <%
                for(int i=0; i<colecao.size(); i++){
                    albumUni = (BeanAlbum)colecao.get(i);                
            %>  
            
                    <tr>
                        <td><%= albumUni.getTema() %></td>
                        <td style="text-align: center !important">
                            <a href="adminFotosAlbum.jsp?id=<%= albumUni.getId() %>&tema=<%= albumUni.getTema() %>" 
                               class="btnVerFotos">
                                Ver Fotos
                            </a>
                        </td>
                    </tr>
                    
            <%
                } conexao.fechar();
            %> 
            
                </table>     
        </div>        
    </body>
</html>
