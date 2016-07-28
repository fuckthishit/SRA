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
public class Possible_Problems {
    private Integer ProblemId;
    private String name, description, Yield, status;

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
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the Yield
     */
    public String getYield() {
        return Yield;
    }

    /**
     * @param Yield the Yield to set
     */
    public void setYield(String Yield) {
        this.Yield = Yield;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
}
