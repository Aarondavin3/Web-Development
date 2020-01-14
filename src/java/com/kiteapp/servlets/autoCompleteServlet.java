package com.kiteapp.servlets;

import com.kiteapp.dao.productDAO;
import com.kiteapp.model.Delta;
import com.kiteapp.model.Kite;
import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.HashMap;
import java.util.Iterator;

/**
 *
 * @author nbuser
 */
public class autoCompleteServlet extends HttpServlet {

     private ServletContext context;
    private productDAO prodDataDAO = new productDAO();
    private HashMap kites = prodDataDAO.getAllProductsInHM();

    @Override
    public void init(ServletConfig config) throws ServletException {
        this.context = config.getServletContext();
    }

    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        String action = request.getParameter("action");
        String targetId = request.getParameter("id");
        StringBuffer sb = new StringBuffer();

        if (targetId != null) {
            targetId = targetId.trim().toLowerCase();
        } else {
            context.getRequestDispatcher("#").forward(request, response);
        }

        boolean namesAdded = false;
        if (action.equals("complete")) {

            // check if user sent empty string
            if (!targetId.equals("")) {

                Iterator it = kites.keySet().iterator();

                while (it.hasNext()) {
                    String id = (String) it.next();
                    Kite kite = (Kite) kites.get(id);

                    if ( // targetId matches first name
                         kite.getName().toLowerCase().startsWith(targetId) ||
                         // targetId matches last name
                         kite.getColour().toLowerCase().startsWith(targetId))
                          {

                        sb.append("<kite>");
                        sb.append("<id>" + kite.getKiteID() + "</id>");
                        sb.append("<Name>" + kite.getName() + "</Name>");
                        sb.append("<Colour>" + kite.getColour() + "</Colour>");
                        sb.append("<Shape>" + kite.getShape() + "</Shape>");
                        sb.append("<Material>" + kite.getMaterial() + "</Material>");
                        sb.append("<Level>" + kite.getLevel() + "</Level>");
                        sb.append("</kite>");
                        namesAdded = true;
                    }
                }
            }

            if (namesAdded) {
                response.setContentType("text/xml");
                response.setHeader("Cache-Control", "no-cache");
                response.getWriter().write("<kites>" + sb.toString() + "</kites>");
            } else {
                //nothing to show
                response.setStatus(HttpServletResponse.SC_NO_CONTENT);
            }
        }

        if (action.equals("lookup")) {

            // put the target composer in the request scope to display 
            if ((targetId != null) && kites.containsKey(targetId.trim())) {
                request.setAttribute("kite", kites.get(targetId));
                context.getRequestDispatcher("/Product.jsp").forward(request, response);
            }
        }
    }
}
