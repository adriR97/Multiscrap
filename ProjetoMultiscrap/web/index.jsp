<%-- 
    Document   : index
    Created on : 15/05/2020, 15:19:33
    Author     : dryro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="style.css">         
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <title>Multiscrap - Página Inicial</title>   
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    </head>
    <body>        
        <div class="menu">
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
            <div class="divEsquerdaMenu">
                <a href="https://www.instagram.com/multiscrap/?hl=pt-br" target="_blank" class="btnRedesSociais"
                   style="margin-right: -5px;">
                    <i class='fab fa-instagram'></i>
		</a>
                <a href="https://wa.me/5541996930911?text=Olá,%20Multiscrap" target="_blank" class="btnRedesSociais">
                    <i class='fab fa-whatsapp'></i>
		</a>
            </div>
        </div>
        
        <div class="divPesquisaTema">
            <input type="text" id="filtroTema" placeholder="Qual o tema da sua festa?">
            <a href="#" target="_blank" id="btnPesquisaTema" style="margin-right: -5px;">
                <i class='fas fa-search'></i>
            </a>
        </div>
    </body>
</html>
