/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.dao;

import com.kiteapp.model.Kite;
import com.kiteapp.utils.DBManager;
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
public class productDAO {
    
    public Vector<Kite> getAllProducts() {
        
        DBManager dbmgr = new DBManager();
        Connection conn = dbmgr.getConnection();
        int prodID = 0;
        String name = null;
        String colour = null;
        String shape = null;
        String material = null;
        String level = null;
        float cost = 0;
        Vector<Kite> kiteData = new Vector();
        
        String query = "SELECT * FROM PRODUCT";
        try{
            PreparedStatement prepState = conn.prepareStatement(query);
            ResultSet rs = prepState.executeQuery();
            while(rs.next()) {
                prodID = rs.getInt(1);
                name = rs.getString(2);
                colour = rs.getString(3);
                shape = rs.getString(4);
                material = rs.getString(5);
                level = rs.getString(6);
                cost = rs.getFloat(7);
                
                Kite tempKite = new Kite();
                tempKite.setName(name);
                tempKite.setKiteID(prodID);
                tempKite.setColour(colour);
                tempKite.setShape(shape);
                tempKite.setMaterial(material);
                tempKite.setLevel(level);
                tempKite.setCost(cost);
                kiteData.add(tempKite);
            } 
        } catch(SQLException ex){
            ex.printStackTrace();
        }
        return kiteData;
    }
    
    public void insertKite(Kite newKite){
        String stmtNewKite="INSERT INTO PRODUCT(NAME,COLOUR,SHAPE,MATERIAL,LEVEL,COST)\n VALUES('" + newKite.getName() + "', '" + newKite.getColour() + "', '" + newKite.getShape() + "', '" + newKite.getMaterial() + "', '" + newKite.getLevel() + "', " + newKite.getCost() + ")";
        DBManager dbmgr = new DBManager();
        Statement currentStatement = null;
        Connection conn = dbmgr.getConnection();
        try{
            currentStatement = conn.createStatement();
            currentStatement.execute(stmtNewKite);
        } catch (SQLException sqlEx){
            logger.log(Level.SEVERE, null, sqlEx);
        }
    }
    
    public void DeleteProduct(String dProduct){
        Kite deleteKite = new Kite();
        String dKite= "DELETE FROM PRODUCT WHERE NAME='" + dProduct + "'";
        DBManager dbmgr = new DBManager();
        PreparedStatement st = null;
        Connection conn = dbmgr.getConnection();
        try{
            st=conn.prepareStatement(dKite);
            st.executeUpdate();
        } catch(SQLException ex) {
            logger.log(Level.SEVERE,null,ex);
        }
    }
    
}
