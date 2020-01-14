/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.servlets;

import com.kiteapp.dao.productDAO;
import com.kiteapp.model.Kite;
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author adavi
 */
public class productServlet extends HttpServlet {

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
        kiteUser u1 = new kiteUser(1, "email@email.com", "password", "John", "Smith", IConstants.USER_TYPE_ADMIN);
        
        request.setAttribute("UserObjectKey", u1);
        
        kiteUser u2 = new kiteUser(1, "email@email.com", "password", "John", "Session", IConstants.USER_TYPE_ADMIN);

        
        //Lets put another one on the session
        request.getSession().setAttribute("SessionUserObjectKey", u2);
       
        Boolean status;
        HttpSession session = request.getSession();
       if (session.getAttribute("SKUSER") != null){
           status = true;
       }else{
                status = false;
       }
       request.setAttribute("status", status);
       
       
        productDAO productDAO = new productDAO();
        Vector<Kite> allProductsVect = productDAO.getAllProducts();
        request.setAttribute(IConstants.REQUEST_KEY_ALL_PRODUCTS, allProductsVect);
        
        RequestDispatcher rd = request.getRequestDispatcher("/newProduct.jsp");
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


