/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.model;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author adavi
 */
public class shoppingCart implements Serializable {
    
    private ArrayList<cartItem> items;
    
    public shoppingCart(){
        items = new ArrayList<cartItem>();
    }
    
    public ArrayList<cartItem> getItems() {
        return items;
    }
    
    public int getCount() {
        return items.size();
    }
    
    public void addItem(cartItem item){
        int kiteID = item.getKite().getKiteID();
        int quantity = item.getQuantity();
        for(cartItem cartItem : items){
            if(cartItem.getKite().getKiteID() == kiteID){
                cartItem.setQuantity(quantity);
                return;
            }
            items.add(item);
        }
                    
    }
    
     public void removeItem(cartItem item) {
         int kiteID = item.getKite().getKiteID();
         for (int i = 0; i < items.size(); i++){
             cartItem cartItem = items.get(i);
             if(cartItem.getKite().getKiteID() == kiteID){
                 items.remove(i);
                 return;
             }
         }
            
        }
}
