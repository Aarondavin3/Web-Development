/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.model;

import java.io.Serializable;
import java.util.Vector;

/**
 *
 * @author adavi
 */
public class cartItem implements Serializable {
    private int quantity;
    private Kite kite;

    public cartItem(){
        
    }
    
    public cartItem(Kite kite, int quantity){
        this.kite = kite;
        this.quantity = quantity;
    }

    
   
    /**
     * @return the quantity
     */
    public int getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

   
    /**
     * @return the kite
     */
    public Kite getKite() {
        return kite;
    }

    /**
     * @param kite the kite to set
     */
    public void setKite(Kite kite) {
        this.kite = kite;
    }
    
    public float getTotal(){
        float total = kite.getCost() * quantity;
        return total;
    }
}
