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
public class Farm {
    private String owner;
    private String farm_name;
    private String district;
    private Double area;
    private String soil_type;
    private String farming_system;
    private String sugarcane_variety;
    private Integer furrow_distance;
    private Integer tiller_number;
    private String boundaries;
    private double latCenter;
    private double lngCenter;

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
     * @return the district
     */
    public String getDistrict() {
        return district;
    }

    /**
     * @param district the district to set
     */
    public void setDistrict(String district) {
        this.district = district;
    }

    /**
     * @return the area
     */
    public Double getArea() {
        return area;
    }

    /**
     * @param area the area to set
     */
    public void setArea(Double area) {
        this.area = area;
    }

    /**
     * @return the soil_type
     */
    public String getSoil_type() {
        return soil_type;
    }

    /**
     * @param soil_type the soil_type to set
     */
    public void setSoil_type(String soil_type) {
        this.soil_type = soil_type;
    }

    /**
     * @return the farming_system
     */
    public String getFarming_system() {
        return farming_system;
    }

    /**
     * @param farming_system the farming_system to set
     */
    public void setFarming_system(String farming_system) {
        this.farming_system = farming_system;
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
     * @return the furrow_distance
     */
    public Integer getFurrow_distance() {
        return furrow_distance;
    }

    /**
     * @param furrow_distance the furrow_distance to set
     */
    public void setFurrow_distance(Integer furrow_distance) {
        this.furrow_distance = furrow_distance;
    }

    /**
     * @return the tiller_number
     */
    public Integer getTiller_number() {
        return tiller_number;
    }

    /**
     * @param tiller_number the tiller_number to set
     */
    public void setTiller_number(Integer tiller_number) {
        this.tiller_number = tiller_number;
    }

    /**
     * @return the boundaries
     */
    public String getBoundaries() {
        return boundaries;
    }

    /**
     * @param boundaries the boundaries to set
     */
    public void setBoundaries(String boundaries) {  
        this.boundaries = boundaries;
    }

    /**
     * @return the latCenter
     */
    public double getLatCenter() {
        return latCenter;
    }

    /**
     * @param latCenter the latCenter to set
     */
    public void setLatCenter(double latCenter) {
        this.latCenter = latCenter;
    }

    /**
     * @return the lngCenter
     */
    public double getLngCenter() {
        return lngCenter;
    }

    /**
     * @param lngCenter the lngCenter to set
     */
    public void setLngCenter(double lngCenter) {
        this.lngCenter = lngCenter;
    }
    
}
