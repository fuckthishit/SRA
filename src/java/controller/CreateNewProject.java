/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.ProjectsDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ndrs
 */
public class CreateNewProject extends BaseServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ProjectsDB projDB = new ProjectsDB();
        HttpSession session = request.getSession();
       
        System.out.println(request);
          Enumeration<String> parameterNames = request.getParameterNames();
           String paramName;
          ArrayList<String>list =new ArrayList<String>();
           while (parameterNames.hasMoreElements()) {
            paramName = parameterNames.nextElement();
            //System.out.println(paramName);
            if (paramName.substring(0, 2).equals("id")) {
              list.add(request.getParameterValues(paramName)[0]);
              //  System.out.println("model no:"+request.getParameterValues(paramName)[0]);
            } 
//            for(int b=0; b<hey.length;b++){
//                System.out.println(hey[b]);
//            }
        }
        
   
        
        session.setAttribute("", projDB.createdNewTableTest());
        ServletContext context = getServletContext();
        RequestDispatcher rd = context.getRequestDispatcher("/CreateNewProject.jsp");
        rd.forward(request, response);

    }
}

