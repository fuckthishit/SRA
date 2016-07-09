package controller;

import com.google.gson.Gson;
import db.FarmersDB;
import entity.Farmer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GetFarmDetails extends BaseServlet {

    @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        FarmersDB farmersDB = new FarmersDB();
        HttpSession session = request.getSession();
        response.getWriter().write(
                new Gson().toJson(
                        farmersDB.getFarmDetails(request.getParameter("farm_name"),
                                (Farmer) session.getAttribute("farmer"))));

    }
}
