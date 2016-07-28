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
public class Fertilization {
    private Integer year;
    private String owner, farm_name, fertilizer;
    private Double first_dose, second_dose;

    /**
     * @return the year
     */
    public Integer getYear() {
        return year;
    }

    /**
     * @param year the year to set
     */
    public void setYear(Integer year) {
        this.year = year;
    }

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
     * @return the fertilizer
     */
    public String getFertilizer() {
        return fertilizer;
    }

    /**
     * @param fertilizer the fertilizer to set
     */
    public void setFertilizer(String fertilizer) {
        this.fertilizer = fertilizer;
    }

    /**
     * @return the first_dose
     */
    public Double getFirst_dose() {
        return first_dose;
    }

    /**
     * @param first_dose the first_dose to set
     */
    public void setFirst_dose(Double first_dose) {
        this.first_dose = first_dose;
    }

    /**
     * @return the second_dose
     */
    public Double getSecond_dose() {
        return second_dose;
    }

    /**
     * @param second_dose the second_dose to set
     */
    public void setSecond_dose(Double second_dose) {
        this.second_dose = second_dose;
    }
}
