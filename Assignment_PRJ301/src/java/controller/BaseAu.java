/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author ACER PRENDATOR
 */
@WebServlet(name = "BaseAu", urlPatterns = {"/BaseAu"})
public abstract class BaseAu extends HttpServlet {


    private boolean isAuthenticated(HttpServletRequest request){
        return request.getSession().getAttribute("account") != null;
    }

    
    protected abstract void doPost(HttpServletRequest request, HttpServletResponse response,Account account)
            throws ServletException, IOException;
    protected abstract void doGet(HttpServletRequest request, HttpServletResponse response,Account account)
            throws ServletException, IOException;
    

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
        if(isAuthenticated(request)){
            Account account = (Account)request.getSession().getAttribute("account");
            doPost(request, response, account);
        }
        else{
            response.getWriter().println("access denied");
        }
    }
    
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(isAuthenticated(request)){
            Account account = (Account)request.getSession().getAttribute("account");
            doPost(request, response, account);
        }
        else{
            response.getWriter().println("access denied");
        }
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
