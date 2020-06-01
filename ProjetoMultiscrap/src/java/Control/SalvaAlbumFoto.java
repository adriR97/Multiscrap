/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author dryro
 */

@WebServlet("/salvaAlbumFoto")
@MultipartConfig(maxFileSize = 1024*1024*50) // 50MB
public class SalvaAlbumFoto extends HttpServlet {
    private ControlFotos album;
    
    @Override
    public void init() {
        album = new ControlFotos();
    }
    
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        
        int resultado, id;
        int opcao = Integer.parseInt(request.getParameter("opcao"));
        String tema = request.getParameter("tema").trim();
        Part foto = request.getPart("foto");        
        InputStream inputStream = null;
        String mensagem = null;
        
        if (foto != null) {
            inputStream = foto.getInputStream();
        }
        
        if(opcao == 1){
            resultado = album.novoAlbum(tema, inputStream);
        
            if(resultado > 0){
                mensagem = "O álbum foi adicionado com sucesso!";
            } else {
                mensagem = "Não foi possível adicionar o álbum!";
            }              
        } else if(opcao == 2) {
            id = Integer.parseInt(request.getParameter("id").trim());
            resultado = album.alterarAlbum(tema, inputStream, id);
            
            if(resultado > 0){
                mensagem = "O álbum foi alterado com sucesso!";
            } else {
                mensagem = "Não foi possível alterar o álbum!";
            }
        }           
        
        request.setAttribute("Mensagem", mensagem);
        getServletContext().getRequestDispatcher("/albumResultado.jsp").forward(request, response);
    }
}