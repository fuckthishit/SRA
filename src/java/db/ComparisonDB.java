/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import entity.Comparison;
import entity.Farm;
import entity.Farmer;
import entity.Problems;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ndrs
 */
public class ComparisonDB {
     public ArrayList<Problems> viewMunicipalityList() {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select * from `possible problems`";
            PreparedStatement pstmt = conn.prepareStatement(query);
         
            ResultSet rs = pstmt.executeQuery();
            ArrayList<Problems> list=null;
             Problems problem = null;
            if (rs.next()) {
                list=new ArrayList<Problems>();
                
               do{
                 problem = new Problems();
                problem.setProblemId(rs.getInt(1));
                problem.setName(rs.getString(2));
                problem.setDescription(rs.getString(3));
               problem.setYield(rs.getString(4));
                problem.setStatus(rs.getString(5));  
                list.add(problem);
               }while(rs.next());
                
                
            }
            rs.close();
            pstmt.close();
            conn.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
    public ArrayList<Comparison> viewBarangayList() {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "SELECT barangay FROM sra.farms group by barangay;";
            PreparedStatement pstmt = conn.prepareStatement(query);
         
            ResultSet rs = pstmt.executeQuery();
            ArrayList<Comparison> list=null;
            
            if (rs.next()) {
                list=new ArrayList<Comparison>();
                
               do{
                   Comparison comp=new Comparison();
                   comp.setBrgy(rs.getString(1));
                list.add(comp);
               }while(rs.next());
                
                
            }
            rs.close();
            pstmt.close();
            conn.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
    
    public ArrayList<Farmer> viewFarmerList(String brgy) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select fms.username from farmers fms join farms f on fms.username=f.owner where f.barangay=? group by fms.username;";
            PreparedStatement pstmt = conn.prepareStatement(query);
         pstmt.setString(1, brgy);
            ResultSet rs = pstmt.executeQuery();
            ArrayList<Farmer> list=null;
            
            if (rs.next()) {
                list=new ArrayList<Farmer>();
                
               do{
                   Farmer farmer=new Farmer();
                   farmer.setUsername(rs.getString(1));
                list.add(farmer);
               }while(rs.next());
                
                
            }
            rs.close();
            pstmt.close();
            conn.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
       public ArrayList<Farm> viewFarmList(String brgy,String farmer) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select f.farm_name from farmers fms join farms f on fms.username=f.owner where fms.username=? and f.barangay=? ;";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, farmer);
            pstmt.setString(2, brgy);
            ResultSet rs = pstmt.executeQuery();
            ArrayList<Farm> list=null;
            
            if (rs.next()) {
                list=new ArrayList<Farm>();
                
               do{
                   Farm farm=new Farm();
                   farm.setFarm_name(rs.getString(1));
                list.add(farm);
               }while(rs.next());
                
                
            }
            rs.close();
            pstmt.close();
            conn.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
       }
       public boolean chkRelation(String brgy,String farm,String farmer) {
        try {
            if (brgy==null){
                
        
                
            }
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select p.project_num from projects p join projects_farms pf on p.project_num=pf.project_num join farms fs on fs.owner=pf.owner  where barangay=? and pf.owner=? group by p.project_num; ;";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, brgy);
            pstmt.setString(2, farmer);
            ResultSet rs = pstmt.executeQuery();
   
            
            
             String query2 = "select p.project_num from projects p join projects_farms pf on p.project_num=pf.project_num join farms fs on fs.owner=pf.owner  where fs.farm_name=? and pf.owner=? group by p.project_num;";
            PreparedStatement pstmt2 = conn.prepareStatement(query2);
            pstmt2.setString(1, farm);
            pstmt2.setString(2, farmer);
            ResultSet rs2 = pstmt2.executeQuery();
            
            
           String query3 = "select * from farms fs  where fs.farm_name=? and fs.barangay=?;";
            PreparedStatement pstmt3 = conn.prepareStatement(query3);
            pstmt3.setString(1, brgy);
            pstmt3.setString(2, farm);
            ResultSet rs3 = pstmt3.executeQuery();
            
            
           
            boolean chck=false;
            if (rs.next()||rs2.next()||rs3.next()) {
             chck=true;
            }else if(rs2.next()){
                chck=true;
            }
                
            
            rs.close();
            pstmt.close();
            conn.close();
            return chck;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
       }
       public Comparison addDropdown(String brgyname,String farmername,String farmname){
        
           Comparison compa=new Comparison();
     
 
        boolean cFarm=false,cFarmer=false;
       if(brgyname==null){
           compa.setComplist(viewBarangayList());
       }else{
            ArrayList<Comparison> brgylist=viewBarangayList();
           for(int i=0;i<brgylist.size();i++){
               if(brgylist.get(i).getBrgy().equalsIgnoreCase(brgyname)){
                   brgylist.get(i).setSelected(true);
                   cFarmer=true;
           }
               else{
                   brgylist.get(i).setSelected(false);
                 //  session.setAttribute("frmer",null);
               }
           }
           if(cFarmer==false){
               farmername=null;
           }
         
              compa.setComplist(brgylist);
       }
       if(farmername==null && brgyname==null|| cFarmer==false)  {
           if(cFarmer==false){
              //  session.setAttribute("frmer",null);
            }else{
             compa.setFarmerList(viewFarmerList(brgyname));  }
               }else{
                    ArrayList<Farmer> frmerlist= viewFarmerList(brgyname);
                     for(int b=0; b<frmerlist.size(); b++){
                       if(frmerlist.get(b).getUsername().equalsIgnoreCase(farmername)){
                           frmerlist.get(b).setIsselected(true);
                           cFarm=true;
                              }else{
                                 frmerlist.get(b).setIsselected(false);
//                                 session.setAttribute("frm",null);
                              }   
                          }
                     compa.setFarmerList(frmerlist); 
               }
       
             if(farmname==null && farmername==null||cFarm==false)  {
                 if(cFarm==false){
                    // session.setAttribute("frm", null);
                 }else{
                       compa.setFarmList(viewFarmList(brgyname,farmername));
                 }
          
               }else{
                  ArrayList<Farm> frmlist= viewFarmList(brgyname,farmername);
                     for(int c=0; c<frmlist.size(); c++){
                       if(frmlist.get(c).getFarm_name().equalsIgnoreCase(farmname)){
                           frmlist.get(c).setSelected(true);
                              }else{
                                 frmlist.get(c).setSelected(false);
                             }   
                          }

                     compa.setFarmList(frmlist);
               }
           
           
           
           return compa;
       }
    }
       
    
    

