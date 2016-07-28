/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Timestamp;

/**
 *
 * @author Bryll Joey Delfin
 */
public class MonthlySurveys {
    private Timestamp id;
    private String owner, farm_name, img_url;
    private Double stalk_length, internodes_u, internodes_l, stalk_diameter_u, stalk_diameter_l;

    /**
     * @return the owner
     */
    public String getOwner() {
        return owner;
    }

    /**
     * @param owner the owner to set
     */
    public void setOwner(String owner) {
        this.owner = owner;
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

    /**
     * @return the img_url
     */
    public String getImg_url() {
        return img_url;
    }

    /**
     * @param img_url the img_url to set
     */
    public void setImg_url(String img_url) {
        this.img_url = img_url;
    }

    /**
     * @return the stalk_length
     */
    public Double getStalk_length() {
        return stalk_length;
    }

    /**
     * @param stalk_length the stalk_length to set
     */
    public void setStalk_length(Double stalk_length) {
        this.stalk_length = stalk_length;
    }

    /**
     * @return the internodes_u
     */
    public Double getInternodes_u() {
        return internodes_u;
    }

    /**
     * @param internodes_u the internodes_u to set
     */
    public void setInternodes_u(Double internodes_u) {
        this.internodes_u = internodes_u;
    }

    /**
     * @return the internodes_l
     */
    public Double getInternodes_l() {
        return internodes_l;
    }

    /**
     * @param internodes_l the internodes_l to set
     */
    public void setInternodes_l(Double internodes_l) {
        this.internodes_l = internodes_l;
    }

    /**
     * @return the stalk_diameter_u
     */
    public Double getStalk_diameter_u() {
        return stalk_diameter_u;
    }

    /**
     * @param stalk_diameter_u the stalk_diameter_u to set
     */
    public void setStalk_diameter_u(Double stalk_diameter_u) {
        this.stalk_diameter_u = stalk_diameter_u;
    }

    /**
     * @return the stalk_diameter_l
     */
    public Double getStalk_diameter_l() {
        return stalk_diameter_l;
    }

    /**
     * @param stalk_diameter_l the stalk_diameter_l to set
     */
    public void setStalk_diameter_l(Double stalk_diameter_l) {
        this.stalk_diameter_l = stalk_diameter_l;
    }

    /**
     * @return the id
     */
    public Timestamp getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Timestamp id) {
        this.id = id;
    }
}
