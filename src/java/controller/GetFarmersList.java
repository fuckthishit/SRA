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

public class GetFarmersList extends BaseServlet {

    @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        FarmersDB farmersDB = new FarmersDB();
        HttpSession session = request.getSession();
        session.setAttribute("farmersList", farmersDB.getFarmers());
        ServletContext context = getServletContext();
        RequestDispatcher rd = context.getRequestDispatcher("/Farmers List.jsp");
        rd.forward(request, response);

    }
}
