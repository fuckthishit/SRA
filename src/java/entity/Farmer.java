/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Bryll Joey Delfin
 */
public class Farmer {
    private String username, cell_num,name, address ,sugarcane_variety, farm_name;
    private int gender, education, civil_status;
    private Double area_harveted, tons_cane, lkg;

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the cell_num
     */
    public String getCell_num() {
        return cell_num;
    }

    /**
     * @param cell_num the cell_num to set
     */
    public void setCell_num(String cell_num) {
        this.cell_num = cell_num;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the gender
     */
    public int getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(int gender) {
        this.gender = gender;
    }

    /**
     * @return the education
     */
    public int getEducation() {
        return education;
    }

    /**
     * @param education the education to set
     */
    public void setEducation(int education) {
        this.education = education;
    }

    /**
     * @return the civil_status
     */
    public int getCivil_status() {
        return civil_status;
    }

    /**
     * @param civil_status the civil_status to set
     */
    public void setCivil_status(int civil_status) {
        this.civil_status = civil_status;
    }

    /**
     * @return the area_harveted
     */
    public Double getArea_harveted() {
        return area_harveted;
    }

    /**
     * @param area_harveted the area_harveted to set
     */
    public void setArea_harveted(Double area_harveted) {
        this.area_harveted = area_harveted;
    }

    /**
     * @return the tons_cane
     */
    public Double getTons_cane() {
        return tons_cane;
    }

    /**
     * @param tons_cane the tons_cane to set
     */
    public void setTons_cane(Double tons_cane) {
        this.tons_cane = tons_cane;
    }

    /**
     * @return the lkg
     */
    public Double getLkg() {
        return lkg;
    }

    /**
     * @param lkg the lkg to set
     */
    public void setLkg(Double lkg) {
        this.lkg = lkg;
    }

    /**
     * @return the sugarcane_variety
     */
    public String getSugarcane_variety() {
        return sugarcane_variety;
    }

    /**
     * @param sugarcane_variety the sugarcane_variety to set
     */
    public void setSugarcane_variety(String sugarcane_variety) {
        this.sugarcane_variety = sugarcane_variety;
    }

    /**
     * @return the farm_name
     */
    public String getFarm_name() {
        return farm_name;
    }

    /**
     * @param farm_name the farm_name to set
     */
    public void setFarm_name(String farm_name) {
        this.farm_name = farm_name;
    }
}
