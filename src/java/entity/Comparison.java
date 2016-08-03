/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import db.DBConnectionFactory;
import db.ProjectsDB;
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
public class Comparison {
private String brgy,municipal,farmer,farm;
private boolean selected;
private ArrayList<Comparison> complist;

private ArrayList<Farmer> farmerList;
private ArrayList<Farm> farmList;



    /**
     * @return the brgy
     */
    public String getBrgy() {
        return brgy;
    }

    /**
     * @param brgy the brgy to set
     */
    public void setBrgy(String brgy) {
        this.brgy = brgy;
    }

    /**
     * @return the municipal
     */
    public String getMunicipal() {
        return municipal;
    }

    /**
     * @param municipal the municipal to set
     */
    public void setMunicipal(String municipal) {
        this.municipal = municipal;
    }

    /**
     * @return the selected
     */
    public boolean isSelected() {
        return selected;
    }

    /**
     * @param selected the selected to set
     */
    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    /**
     * @return the farm
     */


    /**
     * @param farm the farm to set
     */


    /**
     * @return the farmer
     */

    /**
     * @return the complist
     */
    public ArrayList<Comparison> getComplist() {
        return complist;
    }

    /**
     * @param complist the complist to set
     */
    public void setComplist(ArrayList<Comparison> complist) {
        this.complist = complist;
    }

    /**
     * @return the farm
     */
   
    /**
     * @return the farmList
     */
    public ArrayList<Farm> getFarmList() {
        return farmList;
    }

    /**
     * @param farmList the farmList to set
     */
    public void setFarmList(ArrayList<Farm> farmList) {
        this.farmList = farmList;
    }

    /**
     * @return the farmerList
     */
    public ArrayList<Farmer> getFarmerList() {
        return farmerList;
    }

    /**
     * @param farmerList the farmerList to set
     */
    public void setFarmerList(ArrayList<Farmer> farmerList) {
        this.farmerList = farmerList;
    }
}
