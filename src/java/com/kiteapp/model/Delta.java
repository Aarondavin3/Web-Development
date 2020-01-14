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
public class Delta extends Kite {
    




    private String id;
    private String firstName;
    private String lastName;
    private String category;
    
    
    public Delta (String id, String firstName, String lastName, String category) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.category = category;
    }

    public String getCategory() {
        return category;
    }
    
    public String getId() {
        return id;
    }
    
    public String getFirstName() {
        return firstName;
    }
    
    public String getLastName() {
        return lastName;
    }

    
    public Delta(int ID, String name, String colour, String shape, String material, String level, float cost) {
        super(ID, name, colour, shape, material, level, cost);
    }
    
}
