/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

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
}
