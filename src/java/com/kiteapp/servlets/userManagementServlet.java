/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.servlets;

import com.kiteapp.dao.userDAO;
import com.kiteapp.model.kiteUser;
import com.kiteapp.utils.IConstants;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author adavi
 */
public class userManagementServlet extends HttpServlet implements IConstants {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String action = request.getParameter("action");
        if(action.equals("List")){
            listUsers(request,response);
        }
        if(action.equals("addInit")){
            addInitUsers(request,response);
        }
        if(action.equals("add")){
            addUser(request,response);
        }
        if(action.equals("listUser")){
            listUser(request,response);
        }
        if(action.equals("updateInit")){
            updateInitUsers(request,response);
        }
        if(action.equals("update")){
            updateUser(request,response);
        }
        if(action.equals("delete")){
            deleteUser(request, response);
        }
       
        }
    
    private void listUsers(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        userDAO userDAO = new userDAO();
        Vector<kiteUser> vectorAllUsers = userDAO.getAllUsers();
        
        request.setAttribute(IConstants.REQUEST_KEY_ALL_USERS, vectorAllUsers);
        
        RequestDispatcher rd = request.getRequestDispatcher("/userManagement.jsp");
        rd.forward(request, response);
    }
    
    private void listUser(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
      
        
        RequestDispatcher rd = request.getRequestDispatcher("/updateUser.jsp");
        rd.forward(request, response);
    }
    
    private void addInitUsers(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        RequestDispatcher rd = request.getRequestDispatcher("/addUser.jsp");
        rd.forward(request, response);
    }
    
    private void addUser(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        kiteUser newUser = new kiteUser();
        String email = request.getParameter("EMAIL");
        newUser.setEmail(email);
        String password = request.getParameter("PASSWORD");
        newUser.setPassword(password);
        String fName = request.getParameter("FNAME");
        newUser.setFirstName(fName);
        String lName = request.getParameter("LNAME");
        newUser.setLastName(lName);
        String userType = request.getParameter("USERTYPE");
        newUser.setUserType(userType);
        
        userDAO userDAO = new userDAO();
        userDAO.insertUser(newUser);
        
        Vector<kiteUser> allUsersVect = userDAO.getAllUsers();
        request.setAttribute(IConstants.REQUEST_KEY_ALL_USERS, allUsersVect);
        RequestDispatcher rd = request.getRequestDispatcher("/userManagement.jsp");
        rd.forward(request, response);
        
    }
    
     private void updateInitUsers(HttpServletRequest request, HttpServletResponse response)
     throws ServletException, IOException {
         
         kiteUser user = new kiteUser();
         String email = request.getParameter("email");
         userDAO userDAO = new userDAO();
         userDAO.getUserByEmail(email);
         request.setAttribute(IConstants.REQUEST_KEY_USER,userDAO.getUserByEmail(email));
        
        RequestDispatcher rd = request.getRequestDispatcher("/updateUser.jsp");
        rd.forward(request, response);
    }
    
    private void updateUser(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        kiteUser updateUser = new kiteUser();
        String email = request.getParameter("EMAIL");
        updateUser.setEmail(email);
        String password = request.getParameter("PASSWORD");
        updateUser.setPassword(password);
        String fName = request.getParameter("FNAME");
        updateUser.setFirstName(fName);
        String lName = request.getParameter("LNAME");
        updateUser.setLastName(lName);
        String userType = request.getParameter("USERTYPE");
        updateUser.setUserType(userType);
        
        userDAO userDAO = new userDAO();
        userDAO.updateUser(updateUser);
        
        Vector<kiteUser> allUsersVect = userDAO.getAllUsers();
        request.setAttribute(IConstants.REQUEST_KEY_ALL_USERS,allUsersVect);
        
        RequestDispatcher rd = request.getRequestDispatcher("/userManagement.jsp");
        rd.forward(request, response);
        
    }
    
    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        kiteUser deleteUser = new kiteUser();
        String user = request.getParameter("link");
        userDAO userDAO = new userDAO();
        userDAO.DeleteUser(user);
        
        Vector<kiteUser> allUsersVect = userDAO.getAllUsers();
        request.setAttribute(IConstants.REQUEST_KEY_ALL_USERS,allUsersVect);
        
        RequestDispatcher rd = request.getRequestDispatcher("/userManagement.jsp");
        rd.forward(request, response);

    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        kiteUser user = new kiteUser();
         String email = request.getParameter("email");
         userDAO userDAO = new userDAO();
         userDAO.getUserByEmail(email);
        
        RequestDispatcher rd = request.getRequestDispatcher("/updateUser.jsp");
        rd.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

