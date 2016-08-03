package db;

import entity.Farm;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FarmsDB {
    public boolean createFarm(Farm farm){
        try{
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "insert into farms(owner, farm_name, boundary, area) values (?,?,?,?)";
            PreparedStatement pstmt= conn.prepareStatement(query);
            pstmt.setString(1, farm.getOwner());
            pstmt.setString(2, farm.getFarm_name());
            pstmt.setString(3, farm.getBoundaries());
            pstmt.setDouble(4, farm.getArea());
            int i = pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            return i==1;
        } catch(SQLException ex){
             Logger.getLogger(FarmsDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public boolean editFarm(Farm farm){
        try{
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "update farms set district = ?, management_type = ? , address= ?, nitrogen= ?, phosporus= ?, potassium = ?, ph_level= ? "
                    + "where owner = ? and farm_name = ?;";
            PreparedStatement pstmt= conn.prepareStatement(query);
            pstmt.setString(1, farm.getDistrict());
            pstmt.setString(2, farm.getManagement_type());
            pstmt.setString(3, farm.getAddress());
            pstmt.setDouble(4, farm.getNitrogen());
            pstmt.setDouble(5, farm.getPhosporus());
            pstmt.setDouble(6, farm.getPotassium());
            pstmt.setDouble(7, farm.getPhosporus());
            pstmt.setString(8, farm.getOwner());
            pstmt.setString(9, farm.getFarm_name());
            int i = pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            return i==1;
        } catch(SQLException ex){
             Logger.getLogger(FarmsDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public ArrayList<Farm> getFarmsTable() {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select f.farm_name,f.owner,f.barangay from farms f;";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            ArrayList<Farm> farms = null;
            Farm farm;
            if (rs.next()) {
                farms = new ArrayList<Farm>();
                do {
                    farm = new Farm();
                    farm.setFarm_name(rs.getString(1));
                    farm.setOwner(rs.getString(2));
                    farm.setBarangay(rs.getString(3));
                  
                    farms.add(farm);
                } while (rs.next());
            }
            rs.close();
            stmt.close();
            conn.close();
            return farms;
        } catch (SQLException ex) {
            Logger.getLogger(FarmersDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
