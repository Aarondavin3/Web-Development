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
public class Admin extends kiteUser {
    
    
    
    public Admin(int id, String email, String password, String firstName, String lastName, String userType) {
        super(id, email, password, firstName, lastName, userType);
    }
    
}
