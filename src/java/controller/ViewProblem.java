/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.ProjectsDB;
import db.RecommendationDB;
import java.io.IOException;
import java.io.PrintWriter;
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
public class ViewProblem extends BaseServlet {

   
    @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           RecommendationDB recDB = new RecommendationDB();
           ProjectsDB projDB = new ProjectsDB();
        HttpSession session = request.getSession();
       int id= Integer.parseInt(request.getParameter("id"));
       
          session.setAttribute("id", id);
          session.setAttribute("problem", recDB.viewProblem(id));
          session.setAttribute("acceptedProjects", recDB.viewAcceptedProject(id));
          session.setAttribute("allProjects", projDB.viewOtherProjects(id));
        ServletContext context = getServletContext();
        RequestDispatcher rd = context.getRequestDispatcher("/Solutions.jsp");
        rd.forward(request, response);   
    }
}