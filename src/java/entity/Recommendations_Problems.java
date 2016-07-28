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
public class Recommendations_Problems {
    private Integer id, ProblemId;
    private String owner, farm_name;

    /**
     * @return the id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return the ProblemId
     */
    public Integer getProblemId() {
        return ProblemId;
    }

    /**
     * @param ProblemId the ProblemId to set
     */
    public void setProblemId(Integer ProblemId) {
        this.ProblemId = ProblemId;
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
