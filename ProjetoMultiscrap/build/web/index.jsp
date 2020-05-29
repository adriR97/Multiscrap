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
                <li><a class="botao-home" href="#">HOME</a></li>
                <li class="dropdown">
                    <a class="dropbtn" data-toggle="dropdown">CATEGORIA DE PRODUTOS <i class='fas fa-angle-down'></i></a>
                    <div class="dropdown-content" >
                        <a href="#">Papelaria</a>
  			<a href="#">Linha Petit</a>
  			<a href="#">Linha Pop</a>
  			<a href="#">Linha Scrap</a>
  			<a href="#">Linha Creative</a>
                    </div>
                </li> 
                <li><a href="#">TEMAS</a></li>
                <li><a href="#">OPÇÕES DE KITS</a></li>
                <li><a href="#">SOBRE NÓS</a></li>
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
