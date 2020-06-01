/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Bean.BeanAlbum;
import Conexao.Conexao;
import java.io.InputStream;
import java.sql.*;
import java.util.*;
/**
 *
 * @author dryro
 */
public class ControlFotos {
    Connection con = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    public ControlFotos(){
        con = Conexao.conectar();
    }
    
    public ArrayList listarAlbuns(){
        ArrayList colecao = new ArrayList();
        BeanAlbum album;
        String sql = "SELECT id, tema FROM album order by tema";
        
        try {
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();   
            
            while(rs.next()){
                album = new BeanAlbum(rs.getInt("id"), rs.getString("tema"));
                colecao.add(album);
            }
            
            return colecao;
        } catch (Exception e) {
            return null;
        }
    }
    
    public int novoAlbum(String tema, InputStream foto){
        String sql = "INSERT INTO album(tema, foto_capa) VALUES (?,?)";
        
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, tema);
            stmt.setBlob(2, foto);
            stmt.executeUpdate();
            return 1;
        } catch (SQLException e) {
            return 0;
        }
    } 
    
    public int alterarAlbum(String tema, InputStream foto, int id){
        String sql = "UPDATE album SET tema=?, foto_capa=? WHERE id=?"; 
        
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, tema);
            stmt.setBlob(2, foto);          
            stmt.setInt(3, id);
            stmt.executeUpdate(); 
            return 1;
        } catch (Exception e) {
            return 0;
        }
    }
    
    public boolean excluirAlbum(int id){
        String sql = "DELETE FROM album WHERE id=?";
        
        try {
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            return false;
        }
    }    
}
