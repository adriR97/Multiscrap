<%-- 
    Document   : temas
    Created on : 08/06/2020, 17:14:20
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
        <title>Multiscrap - Temas</title>
        <link rel="stylesheet" href="style.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <script>
            function filtrarAlbuns() {
                var input, filter, table, div, a, i, texto;
                input = document.getElementById("filtroTemas");
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
        <div class="menuAbas">
            <ul>
                <li><a class="botao-home" href="index.jsp">HOME</a></li>
                <li class="dropdown">
                    <a class="dropbtn" data-toggle="dropdown">CATEGORIA DE PRODUTOS <i class='fas fa-angle-down'></i></a>
                    <div class="dropdown-content" >
                        <a href="#">PAPELARIA</a>
  			<a href="#">LINHA PETIT</a>
  			<a href="#">LINHA POP</a>
  			<a href="#">LINHA SCRAP</a>
  			<a href="#">LINHA CREATIVE</a>
                    </div>
                </li> 
                <li><a href="temas.jsp">TEMAS</a></li>
                <li><a href="#">OPÇÕES DE KITS</a></li>
                <li><a href="#">SOBRE NÓS</a></li>
            </ul>    
            <div class="divEsquerdaMenuAbas">
                <a href="https://www.instagram.com/multiscrap/?hl=pt-br" target="_blank" class="btnRedesSociaisAbas"
                   style="margin-right: -5px;">
                    <i class='fab fa-instagram iconebtn'></i>
		</a>
                <a href="https://wa.me/5541996930911?text=Olá,%20Multiscrap" target="_blank" class="btnRedesSociaisAbas">
                    <i class='fab fa-whatsapp iconebtn'></i>
		</a>
            </div>
        </div>
        <div style="width: 100%; margin-top: 10px;">
            <input type="text" id="filtroTemas" onkeyup="filtrarAlbuns()" 
                   placeholder="Pesquise o tema"><br>
            
            <%
                ArrayList colecao;
                BeanAlbum albumUni;
                colecao = album.listarAlbuns();  
            %>
            
            <div id="tabelaAlbuns" class="tabelaItensTemas">
            <%
                for(int i=0; i<colecao.size(); i++){
                    albumUni = (BeanAlbum)colecao.get(i);                
            %>  
            
                    <div id="divColuna" class="colunaTabela">
                        <div class="imagemTabela">
                            <img src="adminAlbumImagem.jsp?id=<%= albumUni.getId() %>" width="100%"/> <br>
                            <div>
                                <a class="overlayTema"><div class="text"><%= albumUni.getTema() %></div></a>
                                <a class="overlayDetalhes"><div class="text">
                                        <i class='fas fa-photo-video'></i> Ver Detalhes</div></a>
                            </div>
                        </div>
                    </div>
                    
            <%
                } conexao.fechar();
            %>
        </div>
    </body>
</html>
