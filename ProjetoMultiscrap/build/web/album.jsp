<%-- 
    Document   : album
    Created on : 25/05/2020, 17:46:13
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
        <title>Multiscrap - Álbuns</title>
        <link rel="stylesheet" href="style.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <script>
            function filtrarAlbuns() {
                var input, filter, table, div, a, i, texto;
                input = document.getElementById("filtroAlbum");
                filter = input.value.toUpperCase();
                table = document.getElementById("tabelaAlbuns");
                div = table.getElementsByTagName("div");

                for (i = 0; i < div.length; i++) {
                    a = div[i].getElementsByTagName("a")[0];
                    if (a) {
                        texto = a.textContent || a.innerText;
                        if (texto.toUpperCase().indexOf(filter) > -1) {
                            div[i].style.display = "";
                        } else {
                            div[i].style.display = "none";
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
        <div class="conteudoAdmin" style="padding-top: 20px;">
            <a href="albumAdd.jsp" class="btnAddAlbum">Adicionar Álbum</a>  
            <input type="text" id="filtroAlbum" onkeyup="filtrarAlbuns()" 
                   placeholder="Procurar por tema">
            
            <%
                ArrayList colecao;
                BeanAlbum albumUni;
                colecao = album.listarAlbuns();  
            %>
            
            <div id="tabelaAlbuns" class="tabelaItens">
            <%
                for(int i=0; i<colecao.size(); i++){
                    albumUni = (BeanAlbum)colecao.get(i);                
            %>  
            
                    <div id="divColuna" class="colunaTabela">
                        <div class="imagemTabela">
                            <img src="albumImagem.jsp?id= <%= albumUni.getId() %> " width="100%"/> <br>
                            <div>
                                <a class="overlayTema"><div class="text"><%= albumUni.getTema() %></div></a>
                                <a class="overlayDetalhes"><div class="text">
                                        <i class='fas fa-photo-video'></i> Ver Detalhes</div></a>
                            </div>
                        </div>
                        <a class="botaoALbum" href="albumAlterar.jsp?id=<%= albumUni.getId() %>&album=<%= albumUni.getTema() %>">Alterar</a>
                        <a class="botaoALbum" href="albumExcluir.jsp?id=<%= albumUni.getId() %>">Excluir</a>
                    </div>
            
            <%
                } conexao.fechar();
            %>           
            
            </div>
        </div>        
    </body>
</html>
