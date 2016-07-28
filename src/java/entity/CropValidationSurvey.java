/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author Bryll Joey Delfin
 */
public class CropValidationSurvey {
    private Integer year, furrow_distance, num_millable;
    private String owner, farm_name, variety, texture, topography, crop_class, farming_system;
    private Date harvest_date, date_millable;
    private Double planting_density, avg_millable_stool, brix, stalk_lenght, diameter, weight; 

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
     * @return the num_millable
     */
    public Integer getNum_millable() {
        return num_millable;
    }

    /**
     * @param num_millable the num_millable to set
     */
    public void setNum_millable(Integer num_millable) {
        this.num_millable = num_millable;
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
     * @return the variety
     */
    public String getVariety() {
        return variety;
    }

    /**
     * @param variety the variety to set
     */
    public void setVariety(String variety) {
        this.variety = variety;
    }

    /**
     * @return the texture
     */
    public String getTexture() {
        return texture;
    }

    /**
     * @param texture the texture to set
     */
    public void setTexture(String texture) {
        this.texture = texture;
    }

    /**
     * @return the topography
     */
    public String getTopography() {
        return topography;
    }

    /**
     * @param topography the topography to set
     */
    public void setTopography(String topography) {
        this.topography = topography;
    }

    /**
     * @return the crop_class
     */
    public String getCrop_class() {
        return crop_class;
    }

    /**
     * @param crop_class the crop_class to set
     */
    public void setCrop_class(String crop_class) {
        this.crop_class = crop_class;
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
     * @return the harvest_date
     */
    public Date getHarvest_date() {
        return harvest_date;
    }

    /**
     * @param harvest_date the harvest_date to set
     */
    public void setHarvest_date(Date harvest_date) {
        this.harvest_date = harvest_date;
    }

    /**
     * @return the date_millable
     */
    public Date getDate_millable() {
        return date_millable;
    }

    /**
     * @param date_millable the date_millable to set
     */
    public void setDate_millable(Date date_millable) {
        this.date_millable = date_millable;
    }

    /**
     * @return the planting_density
     */
    public Double getPlanting_density() {
        return planting_density;
    }

    /**
     * @param planting_density the planting_density to set
     */
    public void setPlanting_density(Double planting_density) {
        this.planting_density = planting_density;
    }

    /**
     * @return the avg_millable_stool
     */
    public Double getAvg_millable_stool() {
        return avg_millable_stool;
    }

    /**
     * @param avg_millable_stool the avg_millable_stool to set
     */
    public void setAvg_millable_stool(Double avg_millable_stool) {
        this.avg_millable_stool = avg_millable_stool;
    }

    /**
     * @return the brix
     */
    public Double getBrix() {
        return brix;
    }

    /**
     * @param brix the brix to set
     */
    public void setBrix(Double brix) {
        this.brix = brix;
    }

    /**
     * @return the stalk_lenght
     */
    public Double getStalk_lenght() {
        return stalk_lenght;
    }

    /**
     * @param stalk_lenght the stalk_lenght to set
     */
    public void setStalk_lenght(Double stalk_lenght) {
        this.stalk_lenght = stalk_lenght;
    }

    /**
     * @return the diameter
     */
    public Double getDiameter() {
        return diameter;
    }

    /**
     * @param diameter the diameter to set
     */
    public void setDiameter(Double diameter) {
        this.diameter = diameter;
    }

    /**
     * @return the weight
     */
    public Double getWeight() {
        return weight;
    }

    /**
     * @param weight the weight to set
     */
    public void setWeight(Double weight) {
        this.weight = weight;
    }
}
