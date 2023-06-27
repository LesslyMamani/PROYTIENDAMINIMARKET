
package com.emergentes.utiles;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class validate extends ConecionDB{
    Connection con = this.conectar();
    
    PreparedStatement pr;
    
    public boolean chekUser(String email,String password)
    {
          boolean resultado = false;
        try {
          
            String sql = "select * from persona where email = ? and password = sha1(?)";
            pr = con.prepareStatement(sql);
            pr.setString(1,email);
            pr.setString(2,password);
            
            ResultSet rs = pr.executeQuery();
            resultado = rs.next();
            
            
           
        } catch (SQLException ex) {
            System.out.println("error al autenticar");
        }
         return resultado;
    }
    
}
