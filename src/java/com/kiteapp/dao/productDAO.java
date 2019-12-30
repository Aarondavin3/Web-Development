/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.dao;

import com.kiteapp.model.Kite;
import com.kiteapp.utils.DBManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

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
    
}
