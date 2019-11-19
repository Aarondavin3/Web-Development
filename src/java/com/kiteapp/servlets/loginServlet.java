/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.servlets;

import com.kiteapp.manager.userManager;
import com.kiteapp.model.kiteUser;
import com.kiteapp.utils.IConstants;
import com.kiteapp.utils.StringUtils;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 *
 * @author adavi
 */
public class loginServlet extends HttpServlet implements IConstants {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Servlet code that gets text from an input box
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        //code if input boxes are left empty
        if(StringUtils.isStringEmpty(email)  || StringUtils.isStringEmpty(password)){
            RequestDispatcher rd = request.getRequestDispatcher("/index.html");
            rd.forward(request, response);
        }else {
            //Creating a new user Manager
            userManager userMan = new userManager();
            //Passing in the LoginUser method which returns the user from the DAO if the password is correct
            kiteUser user = userMan.loginUser(email, password);
            
            if(user==null){
                RequestDispatcher rd = request.getRequestDispatcher("/index.html");
                rd.forward(request, response);
            }else{
                request.getSession(true).setAttribute(IConstants.SESSION_KEY_USER, user);
                if(user.getUserType().equals(IConstants.USER_TYPE_ADMIN)){
                    RequestDispatcher rd = request.getRequestDispatcher("/Homepage.jsp");
                    rd.forward(request, response);
                }else if (user.getUserType().equals(IConstants.USER_TYPE_GENERAL_USER)) {
                    RequestDispatcher rd = request.getRequestDispatcher("/Homepage.jsp");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("/index.html");
                    rd.forward(request, response);
                }
            }
        }
    }
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
