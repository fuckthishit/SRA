package db;

import com.google.gson.Gson;
import entity.Farm;
import entity.Farmer;
import entity.LatLng;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FarmersDB {

    public ArrayList<Farmer> getFarmers() {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select * from farmers";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            ArrayList<Farmer> farmers = null;
            Farmer farmer;
            if (rs.next()) {
                farmers = new ArrayList<Farmer>();
                do {
                    farmer = new Farmer();
                    farmer.setUsername(rs.getString(1));
                    farmer.setCell_num(rs.getString(2));
                    farmer.setName(rs.getString(3));
                    farmer.setGender(rs.getInt(4));
                    farmer.setEducation(rs.getInt(5));
                    farmer.setCivil_status(rs.getInt(6));
                    farmer.setAddress(rs.getString(7));
                    farmers.add(farmer);
                } while (rs.next());
            }
            rs.close();
            stmt.close();
            conn.close();
            return farmers;
        } catch (SQLException ex) {
            Logger.getLogger(FarmersDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Farmer getFarmerProfile(String username) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select * from farmers where username = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, username);
            ResultSet rs = pstmt.executeQuery();
            Farmer farmer = null;
            if (rs.next()) {
                farmer = new Farmer();
                farmer.setUsername(username);
                farmer.setCell_num(rs.getString(2));
                farmer.setName(rs.getString(3));
                farmer.setGender(rs.getInt(4));
                farmer.setEducation(rs.getInt(5));
                farmer.setCivil_status(rs.getInt(6));
                farmer.setAddress(rs.getString(7));
            }
            rs.close();
            pstmt.close();
            conn.close();
            return farmer;
        } catch (SQLException ex) {
            Logger.getLogger(FarmersDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public boolean addFarmer(String username) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "insert into farmers(username) values (?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, username);
            int i = pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            return i == 1;
        } catch (SQLException ex) {
            Logger.getLogger(FarmersDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean editFarmer(Farmer newFarmer) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "update  farmers set username = ?, cell_num = ?, name = ?, gender = ?, education = ?, civil_status = ?, address = ?\n"
                    + "where username = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, newFarmer.getUsername());
            pstmt.setString(3, newFarmer.getUsername());
            pstmt.setString(2, newFarmer.getCell_num());
            pstmt.setInt(4, newFarmer.getGender());
            pstmt.setInt(5, newFarmer.getEducation());
            pstmt.setInt(6, newFarmer.getCivil_status());
            pstmt.setString(7, newFarmer.getAddress());
            pstmt.setString(8, newFarmer.getUsername());
            int i = pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            return i == 1;
        } catch (SQLException ex) {
            Logger.getLogger(FarmersDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public ArrayList<String> getFarms(String username) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select farm_name from farms where owner = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, username);
            ArrayList<String> farms = null;
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                farms = new ArrayList<String>();
                do {
                    farms.add(rs.getString("farm_name"));
                } while (rs.next());
            }
            rs.close();
            pstmt.close();
            conn.close();
            return farms;
        } catch (SQLException ex) {
            Logger.getLogger(FarmersDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
   

    public Farm getFarmDetails(String farm_name, Farmer owner) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select * from farms where owner = ? and farm_name = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, owner.getUsername());
            pstmt.setString(2, farm_name);
            ResultSet rs = pstmt.executeQuery();
            Farm farm = null;
            if (rs.next()) {
                farm = new Farm();
                List<LatLng> boundary = StringToBoundary(rs.getString("boundary"));
                farm.setBoundaries(new Gson().toJson(boundary));
                farm.setLatCenter(getLatCenter(boundary));
                farm.setLngCenter(getLngCenter(boundary));
            }
            rs.close();
            pstmt.close();
            conn.close();
            return farm;
        } catch (SQLException ex) {
            Logger.getLogger(FarmersDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

   private List<LatLng> StringToBoundary(String boundary) {
        if (boundary == null) {
            return new ArrayList<LatLng>();
        }
        StringTokenizer tokens = new StringTokenizer(boundary, ",");
        List<LatLng> points = new ArrayList<LatLng>();
        while (tokens.countTokens() > 1) {
            String lat = tokens.nextToken();
            String lng = tokens.nextToken();
            points.add(new LatLng(Double.parseDouble(lat), Double.parseDouble(lng)));
        }
        return points;
    }
   
    private double getLatCenter(List<LatLng> boundary){
        double x1 = boundary.get(0).getLat();
        double x2 = boundary.get(0).getLat();
        
        for (int i = 1; i < boundary.size(); i++){
            if (boundary.get(i).getLat()< x1)
                x1 = boundary.get(i).getLat();
            else if (boundary.get(i).getLat() > x2)
                x2 = boundary.get(i).getLat();
        }
        return  x1 + ((x2 - x1) / 2);
    }
    private double getLngCenter(List<LatLng> boundary){
        double y1 = boundary.get(0).getLng();
        double y2 = boundary.get(0).getLng();
        
        for (int i = 1; i < boundary.size(); i++){
            if (boundary.get(i).getLng() < y1)
                y1 = boundary.get(i).getLng();
            else if (boundary.get(i).getLng() > y2)
                y2 = boundary.get(i).getLng();
        }
        return y1 + ((y2 - y1) / 2);
    }
public Farmer getSpecificFarmerDetails(String Farmname){
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "SELECT * from farmers fs join farms f on fs.username = f.owner join production p on f.owner = p.owner WHERE f.farm_name = ? ";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, Farmname);
            ResultSet rs = stmt.executeQuery(query);
            Farmer farmer = null;
            if (rs.next()) {
                do {
                    farmer = new Farmer();
                    farmer.setUsername(rs.getString(1));
                    farmer.setCell_num(rs.getString(2));
                    farmer.setName(rs.getString(3));
                    farmer.setGender(rs.getInt(4));
                    farmer.setEducation(rs.getInt(5));
                    farmer.setCivil_status(rs.getInt(6));
                    farmer.setAddress(rs.getString(7));
                    farmer.setArea_harveted(rs.getDouble("area_harvested"));
                    farmer.setLkg(rs.getDouble("lkg"));
                    farmer.setTons_cane(rs.getDouble("tons_cane"));
                    farmer.setSugarcane_variety(rs.getString("sugarcane_variety"));
                    farmer.setFarm_name(rs.getString("farm_name"));
                  
                } while (rs.next());
            }
            rs.close();
            stmt.close();
            conn.close();
            return farmer;
        } catch (SQLException ex) {
            Logger.getLogger(FarmersDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public ArrayList<Farmer> getFarmersDetails(){
           try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "SELECT * from farmers fs join farms f on fs.username = f.owner join production p on f.owner = p.owner ";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            ArrayList<Farmer> farmers = null;
            Farmer farmer;
            if (rs.next()) {
                farmers = new ArrayList<Farmer>();
                do {
                    farmer = new Farmer();
                    farmer.setUsername(rs.getString(1));
                    farmer.setCell_num(rs.getString(2));
                    farmer.setName(rs.getString(3));
                    farmer.setGender(rs.getInt(4));
                    farmer.setEducation(rs.getInt(5));
                    farmer.setCivil_status(rs.getInt(6));
                    farmer.setAddress(rs.getString(7));
                    farmer.setArea_harveted(rs.getDouble("area_harvested"));
                    farmer.setLkg(rs.getDouble("lkg"));
                    farmer.setTons_cane(rs.getDouble("tons_cane"));
                    farmer.setSugarcane_variety(rs.getString("sugarcane_variety"));
                    farmer.setFarm_name(rs.getString("farm_name"));
                    farmers.add(farmer);
                } while (rs.next());
            }
            rs.close();
            stmt.close();
            conn.close();
            return farmers;
        } catch (SQLException ex) {
            Logger.getLogger(FarmersDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
