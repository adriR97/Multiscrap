<%-- 
    Document   : imagem
    Created on : 29/05/2020, 16:29:58
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
    Connection con = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try{
        con = Conexao.conectar();
        PreparedStatement ps = con.prepareStatement("select foto_capa from album where id=?");
        ps.setString(1, id);
        rs = ps.executeQuery();

        if(rs.next()){
            Blob blob = rs.getBlob("foto_capa");
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
