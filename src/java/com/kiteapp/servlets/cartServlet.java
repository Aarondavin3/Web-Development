/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kiteapp.servlets;

import com.kiteapp.dao.productDAO;
import com.kiteapp.model.Kite;
import com.kiteapp.model.cartItem;
import com.kiteapp.model.shoppingCart;
import com.kiteapp.utils.productIO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author adavi
 */
public class cartServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    
    public cartServlet(){
        super();
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
       String action = request.getParameter("action");
      if(action == null){
          showCart(request, response);
      } else {
      if(action.equals("buy")){
          newCart(request,response);
      }else if(action.equals("remove")){
          removeCart(request, response);
      }else{
          RequestDispatcher rd = request.getRequestDispatcher("productServlet");
          rd.forward(request, response);
      }
       
}
 }
    
    private void showCart(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        RequestDispatcher rd = request.getRequestDispatcher("Cart.jsp");
        rd.forward(request, response);
        
    }  
    
    private void newCart(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        productDAO prodDAO = new productDAO();
        HttpSession session = request.getSession();
        
        if(session.getAttribute("cart")== null){
            List<cartItem> cart = new ArrayList<>();
            cart.add(new cartItem(prodDAO.getProductByID(request.getParameter("kiteID")),1));
            session.setAttribute("cart", cart);
        } else {
            List<cartItem> cart = (List<cartItem>) session.getAttribute("cart");
            int index = isExisiting(request.getParameter("kiteID"),cart);
            if(index == -1){
                cart.add(new cartItem(prodDAO.getProductByID(request.getParameter("kiteID")),1));
            } else {
                int quantity = cart.get(index).getQuantity() + 1;
                cart.get(index).setQuantity(quantity);
            }
            System.out.println(cart.get(0));
            session.setAttribute("cart", cart);
        }
        System.out.println("Here2");
        response.sendRedirect("Cart.jsp");
        
    }
    
    private int isExisiting(String id, List<cartItem> cart){
        for(int i = 0; i < cart.size(); i++){
            int kID = Integer.valueOf(id);
            if(cart.get(i).getKite().getKiteID() ==(kID)) {
                return i;
            }
        }
        return -1;
    }
    
    private void removeCart(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        List<cartItem> cart = (List<cartItem>) session.getAttribute("cart");
        int index = isExisiting(request.getParameter("kiteID"),cart);
        cart.remove(index);
        session.setAttribute("cart", cart);
        response.sendRedirect("Cart.jsp");
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
       
    }
    
    
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
