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
   private long cartID;
   private long kiteID;
   private int quantity;
   private float subTotal;

    /**
     * @return the cartID
     */
    public long getCartID() {
        return cartID;
    }

    /**
     * @param cartID the cartID to set
     */
    public void setCartID(long cartID) {
        this.cartID = cartID;
    }

    /**
     * @return the id
     */
    public long getId() {
        return kiteID;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.kiteID = id;
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
     * @return the subTotal
     */
    public float getSubTotal() {
        return subTotal;
    }

    /**
     * @param subTotal the subTotal to set
     */
    public void setSubTotal(float subTotal) {
        this.subTotal = subTotal;
    }
}
