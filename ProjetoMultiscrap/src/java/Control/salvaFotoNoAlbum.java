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

@WebServlet("/salvaFotoNoAlbum")
@MultipartConfig(maxFileSize = 1024*1024*50) // 50MB
public class salvaFotoNoAlbum extends HttpServlet {
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
        String tema = request.getParameter("tema").trim();
        String descricao = request.getParameter("descricao").trim();
        int idAlbum = Integer.parseInt(request.getParameter("idAlbum"));
        Part foto = request.getPart("foto");        
        InputStream inputStream = null;
        String mensagem = null;
        
        if (foto != null) {
            inputStream = foto.getInputStream();
        }
        
        resultado = album.salvaFoto(idAlbum, inputStream, descricao);
        
        if(resultado > 0){
            mensagem = "Foto adicionada com sucesso!";
        } else {
            mensagem = "Não foi possível adicionar a foto!";
        }         
        
        request.setAttribute("Mensagem", mensagem);
        request.setAttribute("Album", idAlbum);
        request.setAttribute("Tema", tema);
        getServletContext().getRequestDispatcher("/adminFotoResultado.jsp").forward(request, response);
        
    }   
}
