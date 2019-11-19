/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.manager;

import com.kiteapp.dao.userDAO;
import com.kiteapp.model.kiteUser;

/**
 *
 * @author adavi
 */
public class userManager {
    
    public kiteUser loginUser(String email, String password){
        userDAO newUserDAO = new userDAO();
        kiteUser user =  newUserDAO.getUserByEmail(email);
        if(user.getPassword().equals(password)){
            return user;
        }else{
            return null;
        }
    }
    
}
