/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;

/**
 *
 * @author micha
 */
public class Projects {
    private int project_num;
    private String name;
    private Date date_created;
    private Date date_initial;
    private Date date_end;
    private String description;
    private String status;
    private String created_by;

    /**
     * @return the project_num
     */
    public int getProject_num() {
        return project_num;
    }

    /**
     * @param project_num the project_num to set
     */
    public void setProject_num(int project_num) {
        this.project_num = project_num;
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
     * @return the date_created
     */
    public Date getDate_created() {
        return date_created;
    }

    /**
     * @param date_created the date_created to set
     */
    public void setDate_created(Date date_created) {
        this.date_created = date_created;
    }

    /**
     * @return the date_initial
     */
    public Date getDate_initial() {
        return date_initial;
    }

    /**
     * @param date_initial the date_initial to set
     */
    public void setDate_initial(Date date_initial) {
        this.date_initial = date_initial;
    }

    /**
     * @return the date_end
     */
    public Date getDate_end() {
        return date_end;
    }

    /**
     * @param date_end the date_end to set
     */
    public void setDate_end(Date date_end) {
        this.date_end = date_end;
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

    /**
     * @return the created_by
     */
    public String getCreated_by() {
        return created_by;
    }

    /**
     * @param created_by the created_by to set
     */
    public void setCreated_by(String created_by) {
        this.created_by = created_by;
    }
    
}
