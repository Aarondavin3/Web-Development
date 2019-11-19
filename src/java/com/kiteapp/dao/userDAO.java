/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.dao;

import com.kiteapp.model.kiteUser;
import com.kiteapp.utils.IConstants;
import java.util.Vector;

/**
 *
 * @author adavi
 */
public class userDAO {
    
    public kiteUser getUserByEmail(String email){
        if(email.equals("kiteadmin@kiteboutique.com")){
            kiteUser user1 = new kiteUser(1,"kiteadmin@kiteboutique.com","kiteAdmin","John","Smith",IConstants.USER_TYPE_ADMIN);
            return user1;
        }
            kiteUser user2 = new kiteUser(2,"kiteuser@user.com","user","Aoife","Kane",IConstants.USER_TYPE_GENERAL_USER);
            return user2;
        
        
    }
    
    
       public Vector<kiteUser> getAllUsers() {


        Vector<kiteUser> userData = new Vector();
        kiteUser user1 = new kiteUser(1,"kiteAdmin@kiteBoutique.com","kiteAdmin","John","Smith",IConstants.USER_TYPE_ADMIN);
        userData.add(user1);
        kiteUser user2 = new kiteUser(2,"kiteuser@user.com","user","Aoife","Kane",IConstants.USER_TYPE_GENERAL_USER);
        userData.add(user2);
        return userData;

    }
    
}
