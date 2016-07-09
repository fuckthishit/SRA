/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.ProjectsDB;
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
 * @author micha
 */
public class ViewProject extends BaseServlet {

    @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       ProjectsDB projectsDB = new ProjectsDB();
        HttpSession session = request.getSession();
        session.setAttribute("project", projectsDB.viewProject(Integer.parseInt(request.getParameter("id"))));
        ServletContext context = getServletContext();
        RequestDispatcher rd = context.getRequestDispatcher("/View Project.jsp");
        rd.forward(request, response);   }
}
