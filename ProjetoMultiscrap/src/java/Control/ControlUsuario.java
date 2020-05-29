/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Conexao.Conexao;
import java.sql.*;

/**
 *
 * @author dryro
 */
public class ControlUsuario {
    Connection con = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    public ControlUsuario(){
        con = Conexao.conectar();
    }
    
    public boolean verificaUsuario(String usuario, String senha){
        String sql = "SELECT * FROM usuario WHERE usuario=? and senha=?";
        
        try {
            System.out.println(usuario);
            System.out.println(senha);
            stmt = con.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, senha);
            rs = stmt.executeQuery();
            
            if (rs.next() == true) {
		return true;
            } else {
		return false;
            }   
        } catch (Exception e) {
            return false;
        }
    }
}
