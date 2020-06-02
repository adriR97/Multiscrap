<%-- 
    Document   : fotoImagem
    Created on : 01/06/2020, 20:48:03
    Author     : dryro
--%>

<%@page import="Conexao.Conexao"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
    String id = request.getParameter("id");
    String idAlbum = request.getParameter("album");
    Connection con = null;
    ResultSet rs = null;

    try{
        con = Conexao.conectar();
        PreparedStatement ps = con.prepareStatement("select foto from foto where id_album=? and id=?");
        ps.setString(1, idAlbum);
        ps.setString(2, id);
        rs = ps.executeQuery();

        if(rs.next()){
            Blob blob = rs.getBlob("foto");
            byte byteArray[] = blob.getBytes(1, (int)blob.length());
            response.setContentType("image/gif");
            OutputStream os = response.getOutputStream();
            os.write(byteArray);
            os.flush();
            os.close();
        }
    } catch(Exception e){
        e.printStackTrace();
    } finally{
        if(con != null){
            try{
                con.close();
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }
    }
%>
