/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.utils;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;



/**
 *
 * @author adavi
 */
public class DBSetup {
    
    Logger logger = Logger.getLogger(DBManager.class.getName());
    
     void createTables() {

        DBManager dmbgr = new DBManager();

        Connection con = dmbgr.getConnection();

        InputStream inpStr = this.getClass().getResourceAsStream("createDB.txt");

        executeSqlScript(con, inpStr);
    }
     
     void insertSetupData() {

        DBManager dmbgr = new DBManager();

        Connection con = dmbgr.getConnection();
        
        InputStream inpStr = this.getClass().getResourceAsStream("insertData.txt");

        executeSqlScript(con, inpStr);
    }
     
     public void showData() {
         Statement stmt;

        DBManager dmbgr = new DBManager();

        Connection con = dmbgr.getConnection();
        
        try {
            stmt = con.createStatement();
            ResultSet results = stmt.executeQuery("SELECT * FROM USERDATA");
            System.out.println("\n-----------------------------------------------");
            
            while(results.next()){
                int id = results.getInt(1);
                String email = results.getString(2);
                String password = results.getString(3);
                String fName = results.getString(4);
                String lName = results.getString(5);
                String userType = results.getString(6);
                logger.info(id + "\t\t" + email + "\t\t" + password + "\t\t" + fName + "\t\t" + lName + "\t\t" + userType);
            }
            results.close();
            stmt.close();
        } catch (SQLException sqlex) {
            logger.log(Level.SEVERE,null, sqlex);
        }
     }
     
     public void executeSqlScript(Connection conn, InputStream inputStream) {

        // Delimiter
        String delimiter = ";";

        // Create scanner
        Scanner scanner;

        scanner = new Scanner(inputStream).useDelimiter(delimiter);

        // Loop through the SQL file statements 
        Statement currentStatement = null;
        while (scanner.hasNext()) {

            // Get statement 
            String rawStatement = scanner.next();
            try {
                // Execute statement
                currentStatement = conn.createStatement();
                currentStatement.execute(rawStatement);
            } catch (SQLException e) {
                logger.log(Level.SEVERE, null, e);
            } finally {
                // Release resources
                if (currentStatement != null) {
                    try {
                        currentStatement.close();
                    } catch (SQLException e) {
                        logger.log(Level.SEVERE, null, e);;
                    }
                }
                currentStatement = null;
            }
        }
    }
}
