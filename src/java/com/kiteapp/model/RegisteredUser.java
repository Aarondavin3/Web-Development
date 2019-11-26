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
public class RegisteredUser extends kiteUser {
    
    private String deliveryInfo;
    private String creditCardInfo;
    
    public RegisteredUser(long id, String email, String password, String firstName, String lastName, String userType) {
        super(id, email, password, firstName, lastName, userType);
    }

    /**
     * @return the deliveryInfo
     */
    public String getDeliveryInfo() {
        return deliveryInfo;
    }

    /**
     * @param deliveryInfo the deliveryInfo to set
     */
    public void setDeliveryInfo(String deliveryInfo) {
        this.deliveryInfo = deliveryInfo;
    }

    /**
     * @return the creditCardInfo
     */
    public String getCreditCardInfo() {
        return creditCardInfo;
    }

    /**
     * @param creditCardInfo the creditCardInfo to set
     */
    public void setCreditCardInfo(String creditCardInfo) {
        this.creditCardInfo = creditCardInfo;
    }
    
}