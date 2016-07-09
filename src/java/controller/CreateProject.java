/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.ProjectsDB;
import entity.Projects;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Bryll Joey Delfin
 */
public class CreateProject extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            Projects newProject = new Projects();
            ProjectsDB projectDB = new ProjectsDB();
            newProject.setProject_num(projectDB.getfinalProjectID()+1);
            newProject.setName(request.getParameter("Name"));
            Date datecreated = Date.valueOf(request.getParameter("DateStart"));
            SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD");
            java.sql.Date dateinitial = new java.sql.Date(System.currentTimeMillis());
            Date dateended = Date.valueOf(request.getParameter("DateEnd"));
            newProject.setDate_created(datecreated);
            newProject.setDate_initial(dateinitial);
            newProject.setDate_end(dateended);
            newProject.setDescription(request.getParameter("Description"));
            newProject.setStatus("P");
            HttpSession session = request.getSession();
            User user = (User)session.getAttribute("user");
            newProject.setCreated_by(user.getUsername());
            boolean test = projectDB.createProject(newProject);
            if(test){
                ServletContext context = getServletContext();
                RequestDispatcher rd = context.getRequestDispatcher("/Projects.jsp");
                rd.forward(request, response);
            }
            else{
                ServletContext context = getServletContext();
                RequestDispatcher rd = context.getRequestDispatcher("/Homepage.jsp");
                rd.forward(request, response);
            }
            
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
