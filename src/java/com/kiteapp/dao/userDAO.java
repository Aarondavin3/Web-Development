/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.dao;

import com.kiteapp.model.kiteUser;
import com.kiteapp.utils.DBManager;
import com.kiteapp.utils.IConstants;
import static com.sun.xml.ws.security.impl.policy.Constants.logger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;

/**
 *
 * @author adavi
 */
public class userDAO {
    
    public  kiteUser getUserByEmail(String email){
        DBManager dbmgr = new DBManager();
        Connection conn = dbmgr.getConnection();
        int userID = 0;
        String password = null;
        String fName = null;
        String lName = null;
        String userType = null;
        kiteUser tempUser = new kiteUser();
        
        
        String query = "SELECT * FROM USERDATA WHERE EMAIL=" + "'" + email + "'";
        try {
            PreparedStatement prepstate = conn.prepareStatement(query);
            ResultSet rs = prepstate.executeQuery();
            while(rs.next()){
                userID = rs.getInt(1);
                password = rs.getString(3);
                fName = rs.getString(4);
                lName = rs.getString(5);
                userType = rs.getString(6);
                
                tempUser.setEmail(email);
                tempUser.setId(userID);
                tempUser.setFirstName(fName);
                tempUser.setLastName(lName);
                tempUser.setPassword(password);
                tempUser.setUserType(userType);
                
            }
        } catch (SQLException ex){
            ex.printStackTrace();
        }
        
        return tempUser;
    }
    
    public Vector <kiteUser> getUsersByEmail(String email){
        DBManager dbmgr = new DBManager();
        Connection conn = dbmgr.getConnection();
        int userID = 0;
        String password = null;
        String fName = null;
        String lName = null;
        String userType = null;
        kiteUser tempUser = new kiteUser();
        Vector<kiteUser> userData = new Vector();
        
        String query = "SELECT * FROM USERDATA WHERE EMAIL=" + "'" + email + "'";
        try {
            PreparedStatement prepstate = conn.prepareStatement(query);
            ResultSet rs = prepstate.executeQuery();
            while(rs.next()){
                userID = rs.getInt(1);
                password = rs.getString(3);
                fName = rs.getString(4);
                lName = rs.getString(5);
                userType = rs.getString(6);
                
                tempUser.setEmail(email);
                tempUser.setId(userID);
                tempUser.setFirstName(fName);
                tempUser.setLastName(lName);
                tempUser.setPassword(password);
                tempUser.setUserType(userType);
                userData.add(tempUser);
            }
        } catch (SQLException ex){
            ex.printStackTrace();
        }
        
        return userData;
    }
    
    
       public Vector<kiteUser> getAllUsers() {
           
        DBManager dbmgr = new DBManager();
        Connection conn = dbmgr.getConnection();
        int userID = 0;
        String password = null;
        String email = null;
        String fName = null;
        String lName = null;
        String userType = null;
        Vector<kiteUser> userData = new Vector();
        
        String query = "SELECT * FROM USERDATA";
        try{
            PreparedStatement prepState = conn.prepareStatement(query);
            ResultSet rs = prepState.executeQuery();
            while(rs.next()){
                userID = rs.getInt(1);
                email = rs.getString(2);
                password = rs.getString(3);
                fName = rs.getString(4);
                lName = rs.getString(5);
                userType = rs.getString(6);
                
                kiteUser tempUser = new kiteUser();
                tempUser.setEmail(email);
                tempUser.setId(userID);
                tempUser.setPassword(password);
                tempUser.setFirstName(fName);
                tempUser.setLastName(lName);
                tempUser.setUserType(userType);
                userData.add(tempUser);
            }
        } catch (SQLException ex){
            ex.printStackTrace();
        }
        
        return userData;
    }
       
       public void insertUser(kiteUser newUser){
        
        String stmtNewUser = "INSERT INTO USERDATA(EMAIL,PASSWORD,FNAME,LNAME,USERTYPE)\n VALUES('" + newUser.getEmail() + "', '" + newUser.getPassword() + "', '" + newUser.getFirstName() + "', '" + newUser.getLastName() + "','" + newUser.getUserType() + "')";
        DBManager dbmgr = new DBManager();
        Statement currentStatement = null;
        Connection con = dbmgr.getConnection();
        try {
            // Execute statement
            currentStatement = con.createStatement();
            currentStatement.execute(stmtNewUser);
        } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null, sqlExcept);
        }
    }
       
       public static void updateUser(String fname, String lname, String email) throws SQLException{
           String editUser = "UPDATE USERDATA SET FNAME = ?, LNAME = ? WHERE EMAIL = ?";
           
           DBManager dbmgr = new DBManager();
           Connection conn = dbmgr.getConnection();
           PreparedStatement currentStatement = null;
           
           try{
               currentStatement = conn.prepareStatement(editUser);
               currentStatement.setString(1, fname);
               currentStatement.setString(2, lname);
               currentStatement.setString(3, email);
              
               currentStatement.executeUpdate();
               
           } catch (SQLException sqlEx){
               logger.log(Level.SEVERE,null,sqlEx);
               sqlEx.printStackTrace();
           }
       }
       
       public void DeleteUser(String dUser){
           kiteUser deletedUser = new kiteUser();
           String deleteUser = "DELETE FROM USERDATA WHERE EMAIL ='" + dUser + "'";
           DBManager dbmgr = new DBManager();
           PreparedStatement st = null;
           Connection conn = dbmgr.getConnection();
           try{
               st = conn.prepareStatement(deleteUser);
               st.executeUpdate();
           } catch(SQLException ex){
               logger.log(Level.SEVERE, null,ex);
           }
           
           
       }
    
}
