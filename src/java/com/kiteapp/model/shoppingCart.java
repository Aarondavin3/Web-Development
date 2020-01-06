/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.model;

/**
 *
 * @author adavi
 */
public class shoppingCart {
   private Kite kite;
   private int quantity;
   
   public shoppingCart(Kite kite, int quantity){
       this.kite = kite;
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
  
}
