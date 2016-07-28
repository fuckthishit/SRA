/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import entity.Problems;
import entity.Projects;
import entity.Recommendations;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Bryll Joey Delfin
 */
public class RecommendationDB {
    public ArrayList<Recommendations> getRecommendationsbyUserName(String username){
         try {
            Recommendations recommendation = new Recommendations();
            ArrayList<Recommendations> listofrecom = null;
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "SELECT * FROM recommendations WHERE owner = ? ";
            PreparedStatement pstmt = conn.prepareStatement(query);
           //todo forced coded the username because bryll is stupid
          
            pstmt.setString(1, username);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                do{
                    listofrecom = new ArrayList<Recommendations>();
                    recommendation.setOwner(rs.getString("owner"));
                    recommendation.setFarm_name(rs.getString("farm_name"));
                    recommendation.setRecommendation("recommendation");
                    recommendation.setDescription(rs.getString("description"));
                    recommendation.setStatus(rs.getString("status"));
                    recommendation.setCreated_by(rs.getString("created_by"));
                    recommendation.setDate_created(rs.getDate("date_created"));
                    recommendation.setRemarks(rs.getString("remarks"));
                    listofrecom.add(recommendation);
                }while(rs.next()); 
            }
            return listofrecom;
            } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
    
    
    
      public boolean createNewProblem(Problems problem){
          try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "insert into `possible problems` (name,description,Yield,status) values (?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, problem.getName());
            pstmt.setString(2, problem.getDescription());
            pstmt.setString(3,problem.getYield());
            pstmt.setString(4, "P");
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            return true;
        }
         catch (SQLException ex) {
            Logger.getLogger(UsersDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;  
    }
       public ArrayList<Problems> viewProblems(){
         try {
         DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "SELECT * FROM sra.`possible problems` order by yield";
            PreparedStatement pstmt = conn.prepareStatement(query);
           //todo forced coded the username because bryll is stupid
        
            ResultSet rs = pstmt.executeQuery();
              ArrayList<Problems> problemList = null;
            if(rs.next()){
                  problemList = new ArrayList<Problems>();
                  
                do{
                  Problems problem = new Problems();
                    problem.setProblemId(rs.getInt("ProblemId"));
                    problem.setName(rs.getString("name"));               
                    problem.setDescription(rs.getString("description"));
                     problem.setYield(rs.getString("yield"));
                    problem.setStatus(rs.getString("status"));
       
            
                    problemList.add(problem);
                }while(rs.next()); 
            }
            return problemList;
            } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
       public ArrayList<String> countThresholds(){
         try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select yield from  sra.`possible problems` group by yield;";
            PreparedStatement pstmt = conn.prepareStatement(query);
           //todo forced coded the username because bryll is stupid
        
            ResultSet rs = pstmt.executeQuery();
              ArrayList<String> list = null;
            if(rs.next()){
                  list = new ArrayList<String>();
                  
                do{
                    String newhook;
              
                    newhook=rs.getString("yield");
                     list.add(newhook);
                    
                }while(rs.next()); 
            }
            return list;
            } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     public Problems viewProblem(int prob_no) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select * from `possible problems` where ProblemId = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, prob_no);
            ResultSet rs = pstmt.executeQuery();
             Problems problem = null;
            if (rs.next()) {
               
                problem = new Problems();
                problem.setProblemId(rs.getInt(1));
                problem.setName(rs.getString(2));
                problem.setDescription(rs.getString(3));
               problem.setYield(rs.getString(4));
                problem.setStatus(rs.getString(5));
                
            }
            rs.close();
            pstmt.close();
            conn.close();
            return problem;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
    public ArrayList<Projects> viewAcceptedProject(int prob_id) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select p.project_num, p.name,p.description,p.status from Projects p join sra.`projects-problems` pp on p.project_num = pp.project_num join `possible problems` psp on pp.ProblemId=psp.ProblemId where psp.ProblemId=? and psp.status='A'";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, prob_id);
            ResultSet rs = pstmt.executeQuery();
             ArrayList<Projects> projList=null;
            if (rs.next()) {
              projList=new ArrayList<Projects>();
                 Projects project = null;
                do{
                    project = new Projects();
                project.setProject_num(rs.getInt(1));
                project.setName(rs.getString(2));
                project.setDescription(rs.getString(3));
                project.setStatus(rs.getString(4));
                projList.add(project);
                
                
                }
                while(rs.next());
                
                }
            rs.close();
            pstmt.close();
            conn.close();
            return projList;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
}
