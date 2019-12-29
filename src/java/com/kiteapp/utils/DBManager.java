/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author adavi
 */
public class DBManager {
    
    private static final Logger logger = Logger.getLogger(DBManager.class.getName());
    Connection dbConnection = null;
    
    void loadJDBCDriver() {

        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
        } catch (ClassNotFoundException ex) {
            logger.log(Level.SEVERE,null,ex);
        }
    }
    
    void checkConnection(){
        loadJDBCDriver();
        
        String strUrl = "jdbc:derby:kiteDB;create=true";
        try{
            dbConnection = DriverManager.getConnection(strUrl);
        } catch(SQLException ex){
            logger.log(Level.SEVERE,null,ex.getStackTrace());
        }
        
    }
    
    public Connection getConnection() {
        loadJDBCDriver();
        
        String strUrl = "jdbc:derby:kiteDB;create=true";
        try{
            dbConnection = DriverManager.getConnection(strUrl);
        } catch(SQLException ex){
            logger.log(Level.SEVERE,null,ex.getStackTrace());
        }
       return dbConnection;
    }
    
    
}
