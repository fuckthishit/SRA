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
public class ViewFarmerDropdownCopy extends BaseServlet {

   
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
       boolean cFarm=false,cFarmer=false;
       if(brgyname==null){
            session.setAttribute("brgy", compDB.viewBarangayList());
       }else{
           ArrayList<Comparison> complist=compDB.viewBarangayList();
           for(int i=0;i<complist.size();i++){
               if(complist.get(i).getBrgy().equalsIgnoreCase(brgyname)){
                   complist.get(i).setSelected(true);
                   cFarmer=true;
           }
               else{
                   complist.get(i).setSelected(false);
                   session.setAttribute("frmer",null);
               }
           }
           if(cFarmer==false){
               farmername=null;
           }
         
              session.setAttribute("brgy",complist);
       }
       if(farmername==null && brgyname==null|| cFarmer==false)  {
           if(cFarmer==false){
                session.setAttribute("frmer",null);
            }else{
             session.setAttribute("frmer",compDB.viewFarmerList(brgyname));  }
               }else{
                    ArrayList<Farmer> frmerlist= compDB.viewFarmerList(brgyname);
                     for(int b=0; b<frmerlist.size(); b++){
                       if(frmerlist.get(b).getUsername().equalsIgnoreCase(farmername)){
                           frmerlist.get(b).setIsselected(true);
                           cFarm=true;
                              }else{
                                 frmerlist.get(b).setIsselected(false);
                                 session.setAttribute("frm",null);
                              }   
                          }
                     session.setAttribute("frmer", frmerlist);
               }
       
             if(farmname==null && farmername==null||cFarm==false)  {
                 if(cFarm==false){
                     session.setAttribute("frm", null);
                 }else{
                        session.setAttribute("frm",compDB.viewFarmList(brgyname,farmername));
                 }
          
               }else{
                  ArrayList<Farm> frmlist= compDB.viewFarmList(brgyname,farmername);
                     for(int c=0; c<frmlist.size(); c++){
                       if(frmlist.get(c).getFarm_name().equalsIgnoreCase(farmname)){
                           frmlist.get(c).setSelected(true);
                              }else{
                                 frmlist.get(c).setSelected(false);
                             }   
                          }
                     session.setAttribute("frm", frmlist);
               }
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
             
        ServletContext context = getServletContext();
        RequestDispatcher rd = context.getRequestDispatcher("/Comparison.jsp");
        rd.forward(request, response);   
    
    
    }

}
