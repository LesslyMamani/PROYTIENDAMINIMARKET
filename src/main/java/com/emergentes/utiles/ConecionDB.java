
package com.emergentes.utiles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConecionDB {
    static String driver = "com.mysql.cj.jdbc.Driver";
    static String url = "jdbc:mysql://localhost:3306/bd_tienda";
    static String usuario = "root";
    static String password = "admin";
    
    protected Connection conn = null;

    public ConecionDB() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, usuario, password);
            if(conn !=null){
                System.out.println("Coneccion OK" + conn);
            }
            
            
        } catch (ClassNotFoundException ex) {
            System.out.println("Error al driver" + ex.getMessage());
        } catch (SQLException ex) {
            System.out.println("Eror al conectar" + ex.getMessage());
        }
        
    }
    
    public Connection conectar()
    {
        return conn;
    }
    public void desconectar()
    {
        try {
            conn.close();
        } catch (SQLException ex) {
            System.out.println("error al cerra" + ex.getMessage());
        }
        
    }
}
