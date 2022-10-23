/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.SessionDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Attandance;
import model.Session;
import model.Student;

/**
 *
 * @author ACER PRENDATOR
 */
public class AttendenController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int sesid = Integer.parseInt(request.getParameter("id"));
        SessionDBContext sesDB = new SessionDBContext();
        Session ses = sesDB.get(sesid);
        request.setAttribute("ses", ses);
        request.getRequestDispatcher("../view/lecturer/Attenden.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Session ses = new Session();
        ses.setId(Integer.parseInt(request.getParameter("sesid")));
        String [] stdids = request.getParameterValues("stdid");
        for (String stdid : stdids) {
            Attandance a = new Attandance();
            Student s = new Student();
            a.setStudent(s);
            a.setDescription(request.getParameter("description"+stdid));
            a.setPresent(request.getParameter("present"+stdid).equals("present"));
            s.setId(Integer.parseInt(stdid));
            ses.getAttandances().add(a);
        }
        SessionDBContext sdb = new SessionDBContext();
        sdb.update(ses);
        response.sendRedirect("takeatt?id="+ses.getId());
    }
    
    
    
}
