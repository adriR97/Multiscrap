/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexao;

import java.sql.*;

/**
 *
 * @author dryro
 */
public class Conexao {
    public static Connection conexao = null;    
    
    public static Connection conectar(){
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/multiscrap";
        String user = "root";
        String password = "";
        
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);    
            return conexao;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    public void fechar(){
        try {
            conexao.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
