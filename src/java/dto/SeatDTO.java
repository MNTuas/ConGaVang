/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author ADMIN
 */
public class SeatDTO {
   private int idseat;
   private String nameseat;
   private String isOccupied;

    public SeatDTO() {
    }

    public SeatDTO(int idseat, String nameseat, String isOccupied) {
        this.idseat = idseat;
        this.nameseat = nameseat;
        this.isOccupied = isOccupied;
    }

    public int getIdseat() {
        return idseat;
    }

    public void setIdseat(int idseat) {
        this.idseat = idseat;
    }

    public String getNameseat() {
        return nameseat;
    }

    public void setNameseat(String nameseat) {
        this.nameseat = nameseat;
    }

    public String getIsOccupied() {
        return isOccupied;
    }

    public void setIsOccupied(String isOccupied) {
        this.isOccupied = isOccupied;
    }

    @Override
    public String toString() {
        return "SeatDTO{" + "idseat=" + idseat + ", nameseat=" + nameseat + ", isOccupied=" + isOccupied + '}';
    }
 
    
}
