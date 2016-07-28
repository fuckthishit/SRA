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
public class Projects_Farms {
    private Integer project_num;
    private String owner, farm_name;

    /**
     * @return the project_num
     */
    public Integer getProject_num() {
        return project_num;
    }

    /**
     * @param project_num the project_num to set
     */
    public void setProject_num(Integer project_num) {
        this.project_num = project_num;
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
}
