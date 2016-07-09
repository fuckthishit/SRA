package controller;

import db.FarmersDB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class ViewFarmerProfile extends BaseServlet {

    @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
        FarmersDB farmersDB = new FarmersDB();
        HttpSession session = request.getSession();
        session.setAttribute("farmer", farmersDB.getFarmerProfile(request.getParameter("id")));
        session.setAttribute("farms", farmersDB.getFarms(request.getParameter("id")));
        ServletContext context = getServletContext();
        RequestDispatcher rd = context.getRequestDispatcher("/Farmer Assistance Profile.jsp");
        rd.forward(request, response);   
    
    }
}