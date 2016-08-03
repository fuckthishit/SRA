/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.ComparisonDB;
import db.ProjectsDB;
import entity.Comparison;
import entity.Farm;
import entity.Farmer;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class ViewFarmerDropdown extends BaseServlet {

   
    @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        //NEEDS NEW STATEMENT IF FARM DOES NOT BELONG TO BRGY THEN SET FARMNAME AND FARMERNAME TO NULL
          //NEEDS SAME BUT FOR FARM DOES NOT BELONG TO FARMER
        //
        
         ComparisonDB compDB = new ComparisonDB();
        HttpSession session = request.getSession();
       String brgyname= request.getParameter("brgyname"); 
       String farmername= request.getParameter("farmername");
       String farmname= request.getParameter("farmname");
       
         String brgyname2= request.getParameter("brgyname2"); 
       String farmername2= request.getParameter("farmername2");
       String farmname2= request.getParameter("farmname2");
         //check if empty then give new brgy list
        System.out.println(brgyname);
         System.out.println(farmername);
         System.out.println(farmname);
         
           if(brgyname==null||brgyname.equalsIgnoreCase("0")){
           System.out.println("brgy is empty");
            brgyname=null;
       }else if(farmername==null||farmername.equalsIgnoreCase("0")){
            System.out.println("farmername is empty");
            farmername=null;
       }else if(farmname==null||farmname.equalsIgnoreCase("0")){
            System.out.println("farmname is empty");
            farmname=null;
       }
              
           if(brgyname!=null){
           if(compDB.chkRelation(brgyname,farmname,farmername)==false){
           farmername=null;
           farmname=null;
           }
           }
           
           if(brgyname2==null||brgyname2.equalsIgnoreCase("0")){
           System.out.println("brgy2 is empty");
            brgyname2=null;
       }else if(farmername2==null||farmername2.equalsIgnoreCase("0")){
            System.out.println("farmername2 is empty");
            farmername2=null;
       }else if(farmname2==null||farmname2.equalsIgnoreCase("0")){
            System.out.println("farmname2 is empty");
            farmname2=null;
             }
        
  
       if(brgyname2!=null){
           if(compDB.chkRelation(brgyname2,farmname2,farmername2)==false){
           farmername2=null;
           farmname2=null;
           }
             }
   
          Comparison comparison=compDB.addDropdown(brgyname,farmername,farmname);
         
          Comparison comparison2=compDB.addDropdown(brgyname2,farmername2,farmname2);
          
        session.setAttribute("brgy",comparison.getComplist());
        session.setAttribute("frmer",comparison.getFarmerList());
         session.setAttribute("frm",comparison.getFarmList());
         
         session.setAttribute("brgy2",comparison2.getComplist());
        session.setAttribute("frmer2",comparison2.getFarmerList());
         session.setAttribute("frm2",comparison2.getFarmList());
         
         
                if(farmname!=null){
                 ProjectsDB projDB= new ProjectsDB();
                       session.setAttribute("frmProj",projDB.viewfarmProjects(farmname));

                    }else if(farmername!=null){
                          ProjectsDB projDB= new ProjectsDB();
                       session.setAttribute("frmProj",projDB.viewFarmerProjects(farmername));
                    }
                    else if(brgyname!=null){
                          ProjectsDB projDB= new ProjectsDB();
                       session.setAttribute("frmProj",projDB.viewBrgyProjects(brgyname));

                    }else{session.setAttribute("frmProj",null);   
                    System.out.println("projects set to null");
                         }
         
           if(farmname2!=null){
               
          ProjectsDB projDB= new ProjectsDB();
           session.setAttribute("frmProj2",projDB.viewfarmProjects(farmname2));
               
             }else if(farmername2!=null){
                   ProjectsDB projDB= new ProjectsDB();
                session.setAttribute("frmProj2",projDB.viewFarmerProjects(farmername2));
             }
             else if(brgyname2!=null){
                   ProjectsDB projDB= new ProjectsDB();
                session.setAttribute("frmProj2",projDB.viewBrgyProjects(brgyname2));
                 
             }else{session.setAttribute("frmProj2",null);   
             System.out.println("projects set to null");
                  }
             
        ServletContext context = getServletContext();
        RequestDispatcher rd = context.getRequestDispatcher("/Comparison.jsp");
        rd.forward(request, response);   
    
    
    }

}
