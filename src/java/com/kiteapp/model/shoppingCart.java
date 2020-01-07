/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.model;

import java.util.ArrayList;

/**
 *
 * @author adavi
 */
public class shoppingCart {
   private ArrayList cartItems = new ArrayList();
   private double dblOrderTotal;
   
   public int getLineItemCount(){
       return cartItems.size();
   }
   
   public void deleteCartItem(String strItemIndex){
       
   }
}
