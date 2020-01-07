/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.servlets;

import com.kiteapp.dao.productDAO;
import com.kiteapp.model.Kite;
import com.kiteapp.utils.IConstants;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
public class productManagementServlet extends HttpServlet {

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
            listProducts(request,response);
        }
        if(action.equals("addInit")){
            addInitProducts(request, response);
        }
        if(action.equals("add")){
            addProduct(request, response);
        }
        if(action.equals("delete")){
            deleteProduct(request,response);
        }
        if(action.equals("update")){
            updateProduct(request,response);
        }
    }
    
    private void listProducts(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        productDAO prodDAO = new productDAO();
        Vector<Kite> vectorAllKites = prodDAO.getAllProducts();
        
        request.setAttribute(IConstants.REQUEST_KEY_ALL_PRODUCTS,vectorAllKites);
        
        RequestDispatcher rd = request.getRequestDispatcher("/productManagement.jsp");
        rd.forward(request, response);
    }
    
    private void addInitProducts(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        RequestDispatcher rd = request.getRequestDispatcher("/addProduct.jsp");
        rd.forward(request, response);
    }
    
    
    private void addProduct(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        Kite newKite = new Kite();
        String name = request.getParameter("NAME");
        newKite.setName(name);
        String colour = request.getParameter("COLOUR");
        newKite.setColour(colour);
        String shape = request.getParameter("SHAPE");
        newKite.setShape(shape);
        String material = request.getParameter("MATERIAL");
        newKite.setMaterial(material);
        String level = request.getParameter("LEVEL");
        newKite.setLevel(level);
        float cost =  Float.valueOf(request.getParameter("COST"));
        newKite.setCost(cost);
        
        productDAO prodDAO = new productDAO();
        prodDAO.insertKite(newKite);
        
        Vector<Kite> allProductsVect = prodDAO.getAllProducts();
        request.setAttribute(IConstants.REQUEST_KEY_ALL_PRODUCTS, allProductsVect);
        RequestDispatcher rd = request.getRequestDispatcher("/productManagement.jsp");
        rd.forward(request, response);
        
    }
    
    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        Kite deleteKite = new Kite();
        String kiteName = request.getParameter("link");
        productDAO prodDAO = new productDAO();
        prodDAO.DeleteProduct(kiteName);
        
        Vector<Kite> allKiteVect = prodDAO.getAllProducts();
        request.setAttribute(IConstants.REQUEST_KEY_ALL_PRODUCTS, allKiteVect);
        
        RequestDispatcher rd = request.getRequestDispatcher("/productManagement.jsp");
        rd.forward(request, response);
    }
    
    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        productDAO prodDAO = new productDAO();
        String pName = request.getParameter("pName");
        String colour = request.getParameter("colour");
        String material = request.getParameter("material");
        float cost = Float.parseFloat(request.getParameter("cost"));
        
        try{
           prodDAO.updateProduct(pName,colour,material,cost);
        } catch (SQLException e) {
            System.out.println(e);
        }
        
        Vector<Kite> allKitesVect = prodDAO.getAllProducts();
        request.setAttribute(IConstants.REQUEST_KEY_ALL_PRODUCTS,allKitesVect);
        RequestDispatcher rd = request.getRequestDispatcher("/productManagement.jsp");
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
