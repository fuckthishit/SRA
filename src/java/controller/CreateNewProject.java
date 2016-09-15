/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.ProjectsDB;
import entity.Projects;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
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
       
      
       // System.out.println(request);
          Enumeration<String> parameterNames = request.getParameterNames();
          
          ProjectsDB projectDB = new ProjectsDB();
           Projects newProject = new Projects();
          
           newProject.setName(request.getParameter("projectname"));
           newProject.setDescription(request.getParameter("Description"));
          //  Date datecreated = Date.valueOf(request.getParameter("datepicker"));
           SimpleDateFormat sdf = new SimpleDateFormat("mm/dd/yyyy");
          Date datecreated;
       //  System.out.println(datecreated);  
          //  newProject.setDate_created(datecreated);
           newProject.setStatus("P");
           newProject.setCreated_by("michael");
       
           String paramName;
          ArrayList<String>farmlist =new ArrayList<String>();
          ArrayList<String>problist =new ArrayList<String>();
           while (parameterNames.hasMoreElements()) {
            paramName = parameterNames.nextElement();
            //System.out.println(paramName);
            if (paramName.substring(0, 2).equals("id")) {
                for(int i=0;i<request.getParameterValues(paramName).length;i++){
                     farmlist.add(request.getParameterValues(paramName)[i]);
                 System.out.println(request.getParameterValues(paramName)[i]);
                }
            } 
            else if (paramName.substring(0, 6).equals("probid")) {
                for(int i=0;i<request.getParameterValues(paramName).length;i++){
                     problist.add(request.getParameterValues(paramName)[i]);
                 System.out.println(request.getParameterValues(paramName)[i]);
                }

        }
           }
           
    
         boolean test = projectDB.createProject(newProject);
         
         projectDB.getfinalProjectID();
            if(test){
                ServletContext context = getServletContext();
                RequestDispatcher rd = context.getRequestDispatcher("/GetProjects");
                rd.forward(request, response);
            }
            else{
                ServletContext context = getServletContext();
                RequestDispatcher rd = context.getRequestDispatcher("/CreateNewProject.jsp");
                rd.forward(request, response);
            } 
       

    }
}

