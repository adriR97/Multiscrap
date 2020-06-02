<%-- 
    Document   : fotosAlbum
    Created on : 01/06/2020, 17:26:26
    Author     : dryro
--%>

<%@page import="Bean.BeanFoto"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    </head>
    <body>
        <div class="menuAdmin">
            <a href="adminAlbum.jsp"><i class='fas fa-book'></i> Álbuns</a>
            <a href="adminFotos.jsp"><i class='fas fa-camera'></i> Fotos</a>
            <a href="fechaSessao" style="margin-top: 450px"><i class='fas fa-sign-out-alt'></i> Sair</a>
        </div>
        <div class="conteudoAdmin" style="padding-top: 20px;">
        <%
            int id = Integer.parseInt(request.getParameter("id").trim());
            String tema = request.getParameter("tema").trim();
        %>
        
        <a href="adminFotoAdicionar.jsp?id=<%= id %>&album=<%= tema %>" class="btnAddFoto">Adicionar Foto</a>
        
        <%
            ArrayList colecao;
            BeanFoto foto;
            colecao = album.listarFotosAlbum(id);  
        %>
        
        <div class="tabelaFotos">
            <%
                for(int i=0; i<colecao.size(); i++){
                    foto = (BeanFoto)colecao.get(i);                
            %>  
            
            <div class="colunaFotos">
                <div class="fotoAlbum">
                    <img width="100%" src="adminFotoImagem.jsp?id=<%= foto.getIdFoto() %>&album=<%= foto.getIdAlbum() %>"/> <br>
                    <div>
                        <a class="overlayExcluirFoto" href="adminFotoExcluir.jsp?id=<%= foto.getIdFoto() %>&album=<%= foto.getIdAlbum() %>">
                            <div class="textFoto"><i class='fas fa-eraser'></i> Excluir Foto</div></a>
                    </div>
                </div>
            </div>
            
            <%
                } conexao.fechar();
            %>  
        </div>
    </body>
</html>
