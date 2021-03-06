/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.model;

import java.io.Serializable;

/**
 *
 * @author adavi
 */
  public class Kite implements Serializable {
    private String name;
    private int kiteID;
    private String colour;
    private String shape;
    private String material;
    private String level;
    private float cost;
    
    public Kite(int ID, String name, String colour, String shape, String material, String level, float cost){
        this.kiteID = ID;
        this.name = name;
        this.colour = colour;
        this.shape = shape;
        this.material = material;
        this.level = level;
        this.cost = cost;
    }
    
    public Kite(){
        kiteID = 0;
        name = "";
        colour ="";
        shape = "";
        material = "";
        level = "";
        cost = 0;
        
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the kiteID
     */
    public int getKiteID() {
        return kiteID;
    }

    /**
     * @param kiteID the kiteID to set
     */
    public void setKiteID(int kiteID) {
        this.kiteID = kiteID;
    }

    /**
     * @return the shape
     */
    public String getShape() {
        return shape;
    }

    /**
     * @param shape the shape to set
     */
    public void setShape(String shape) {
        this.shape = shape;
    }

    /**
     * @return the material
     */
    public String getMaterial() {
        return material;
    }

    /**
     * @param material the material to set
     */
    public void setMaterial(String material) {
        this.material = material;
    }

    /**
     * @return the level
     */
    public String getLevel() {
        return level;
    }

    /**
     * @param level the level to set
     */
    public void setLevel(String level) {
        this.level = level;
    }

    /**
     * @return the cost
     */
    public float getCost() {
        return cost;
    }

    /**
     * @param cost the cost to set
     */
    public void setCost(float cost) {
        this.cost = cost;
    }
    
    public String getColour(){
        return colour;
    }
    
    public void setColour(String colour){
        this.colour = colour;
    }

   
   

  
    
}
