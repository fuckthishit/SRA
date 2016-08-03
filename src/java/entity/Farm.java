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
    private String district,barangay;
    private double area;
    private String management_type;
    private String address;
    private double nitrogen, phosporus, potassium, ph_level;
    private String boundaries;
    private double latCenter;
    private double lngCenter;
    private boolean selected;

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
    public double getArea() {
        return area;
    }

    /**
     * @param area the area to set
     */
    public void setArea(double area) {
        this.area = area;
    }

    /**
     * @return the management_type
     */
    public String getManagement_type() {
        return management_type;
    }

    /**
     * @param management_type the management_type to set
     */
    public void setManagement_type(String management_type) {
        this.management_type = management_type;
    }

    /**
     * @return the nitrogen
     */
    public double getNitrogen() {
        return nitrogen;
    }

    /**
     * @param nitrogen the nitrogen to set
     */
    public void setNitrogen(double nitrogen) {
        this.nitrogen = nitrogen;
    }

    /**
     * @return the phosporus
     */
    public double getPhosporus() {
        return phosporus;
    }

    /**
     * @param phosporus the phosporus to set
     */
    public void setPhosporus(double phosporus) {
        this.phosporus = phosporus;
    }

    /**
     * @return the potassium
     */
    public double getPotassium() {
        return potassium;
    }

    /**
     * @param potassium the potassium to set
     */
    public void setPotassium(double potassium) {
        this.potassium = potassium;
    }

    /**
     * @return the ph_level
     */
    public double getPh_level() {
        return ph_level;
    }

    /**
     * @param ph_level the ph_level to set
     */
    public void setPh_level(double ph_level) {
        this.ph_level = ph_level;
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
     * @return the selected
     */
    public boolean isSelected() {
        return selected;
    }

    /**
     * @param selected the selected to set
     */
    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    /**
     * @return the barangay
     */
    public String getBarangay() {
        return barangay;
    }

    /**
     * @param barangay the barangay to set
     */
    public void setBarangay(String barangay) {
        this.barangay = barangay;
    }

}
