/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import controller.BaseServlet;
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
public class ViewAllSolution extends BaseServlet {

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
            RecommendationDB recDB = new RecommendationDB();
        
        HttpSession session = request.getSession();
       int id= Integer.parseInt(request.getParameter("rowid"));
        int probid= Integer.parseInt(request.getParameter("probid").trim());
    
        recDB.addAccPrograms(probid,id);
 }

}
