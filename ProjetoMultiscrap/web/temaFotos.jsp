<%-- 
    Document   : temaFotos
    Created on : 08/06/2020, 18:19:10
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
        <div class="menuAbas">
            <ul>
                <li><a class="botao-home" href="index.jsp">HOME</a></li>
                <li><a href="#">A SCRAP BOX</a></li>
                <li><a href="temas.jsp">COLEÇÕES</a></li>
                <li class="dropdown">
                    <a class="dropbtn" data-toggle="dropdown">SCRAP KITS <i class='fas fa-angle-down'></i></a>
                    <div class="dropdown-content" >
                        <a href="#">OPÇÃO 1</a>
  			<a href="#">OPÇÃO 2</a>
  			<a href="#">OPÇÃO 3</a>
                    </div>
                </li>                 
                <li><a href="#">BOX SURPRESA</a></li>
                <li class="dropdown">
                    <a class="dropbtn" data-toggle="dropdown">MOLDES <i class='fas fa-angle-down'></i></a>
                    <div class="dropdown-content" >
                        <a href="#">MOLDES GRATUITOS</a>
  			<a href="#">KITS PARA MONTAR</a>
                    </div>
                </li> 
                <li><a href="#">PRESENTES</a></li>
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
        <%
            int id = Integer.parseInt(request.getParameter("id").trim());
            String tema = request.getParameter("tema").trim();        
            ArrayList colecao;
            BeanFoto foto;
            colecao = album.listarFotosAlbum(id);  
        %>
        
        <h2 style="text-align: center"><%= tema %></h2>
        <div class="tabelaFotos">
            <%
                for(int i=0; i<colecao.size(); i++){
                    foto = (BeanFoto)colecao.get(i);                
            %>  
            
            <div class="colunaFotos">
                <div class="fotoAlbum">
                    <img width="100%" alt="<%= foto.getDescricao() %>"
                         src="adminFotoImagem.jsp?id=<%= foto.getIdFoto() %>&album=<%= foto.getIdAlbum() %>"/> <br>
                    
                </div>
            </div>
            
            <%
                } conexao.fechar();
            %>  
        </div>
    </body>
</html>
