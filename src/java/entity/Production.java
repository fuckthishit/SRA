/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.util.Date;

/**
 *
 * @author Bryll Joey Delfin
 */
public class Production {
    private String owner;
    private String farm_name;
    private String mill;
    private Double area_harvested;
    private Double tons_cane;
    private Double lkg;
    private Date date;

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
     * @return the mill
     */
    public String getMill() {
        return mill;
    }

    /**
     * @param mill the mill to set
     */
    public void setMill(String mill) {
        this.mill = mill;
    }

    /**
     * @return the area_harvested
     */
    public Double getArea_harvested() {
        return area_harvested;
    }

    /**
     * @param area_harvested the area_harvested to set
     */
    public void setArea_harvested(Double area_harvested) {
        this.area_harvested = area_harvested;
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
     * @return the date
     */
    public Date getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(Date date) {
        this.date = date;
    }
}
