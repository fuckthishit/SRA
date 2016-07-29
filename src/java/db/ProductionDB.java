/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import entity.Production;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Bryll Joey Delfin
 */
public class ProductionDB {
    public ArrayList<Production> getProductionbyBarangay(){
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "SELECT p.lkg, f.farm_name, f.barangay FROM sra.farms f join sra.production p on f.farm_name = p.farm_name group by f.barangay ;";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            ArrayList<Production> productions = null;
            Production production;
            if (rs.next()) {
                productions = new ArrayList<Production>();
                do {
                    production = new Production();
                    production.setBarangay(rs.getString("barangay"));
                    production.setLkg(rs.getDouble("lkg"));
                    production.setFarm_name(rs.getString("farm_name"));
                    productions.add(production);
                } while (rs.next());
            }
            rs.close();
            stmt.close();
            conn.close();
            return productions;
        } catch (SQLException ex) {
            Logger.getLogger(FarmersDB.class.getName()).log(Level.SEVERE, null, ex);
        }
     return null;   
    }
    public ArrayList<Production> getProduction(){
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "SELECT * FROM sra.production";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            ArrayList<Production> productions = null;
            Production production;
            if (rs.next()) {
                productions = new ArrayList<Production>();
                do {
                    production = new Production();
                    
                    productions.add(production);
                } while (rs.next());
            }
            rs.close();
            stmt.close();
            conn.close();
            return productions;
        } catch (SQLException ex) {
            Logger.getLogger(FarmersDB.class.getName()).log(Level.SEVERE, null, ex);
        }
     return null;
    }
}
