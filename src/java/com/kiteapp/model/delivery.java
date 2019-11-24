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
public class delivery {
    private long deliveryID;
    private long kiteID;
    private String shippingType;
    private float shippingCost;
    private String deliveryRegion;

    /**
     * @return the deliveryID
     */
    public long getDeliveryID() {
        return deliveryID;
    }

    /**
     * @param deliveryID the deliveryID to set
     */
    public void setDeliveryID(long deliveryID) {
        this.deliveryID = deliveryID;
    }

    /**
     * @return the kiteID
     */
    public long getKiteID() {
        return kiteID;
    }

    /**
     * @param kiteID the kiteID to set
     */
    public void setKiteID(long kiteID) {
        this.kiteID = kiteID;
    }

    /**
     * @return the shippingType
     */
    public String getShippingType() {
        return shippingType;
    }

    /**
     * @param shippingType the shippingType to set
     */
    public void setShippingType(String shippingType) {
        this.shippingType = shippingType;
    }

    /**
     * @return the shippingCost
     */
    public float getShippingCost() {
        return shippingCost;
    }

    /**
     * @param shippingCost the shippingCost to set
     */
    public void setShippingCost(float shippingCost) {
        this.shippingCost = shippingCost;
    }

    /**
     * @return the deliveryRegion
     */
    public String getDeliveryRegion() {
        return deliveryRegion;
    }

    /**
     * @param deliveryRegion the deliveryRegion to set
     */
    public void setDeliveryRegion(String deliveryRegion) {
        this.deliveryRegion = deliveryRegion;
    }
}
