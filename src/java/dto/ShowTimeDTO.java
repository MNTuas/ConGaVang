/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author khong phai Minh Tuan
 */
public class ShowTimeDTO {
    private String showtimeid;
    private String movieid;
    private String cinemaid;
    private String day;
    private String starttime;
   

   

    public ShowTimeDTO() {
    }

    public ShowTimeDTO(String movieid, String cinemaid, String day, String starttime) {
        this.movieid = movieid;
        this.cinemaid = cinemaid;
        this.day = day;
        this.starttime = starttime;
        

    }

   

    public String getMovieid() {
        return movieid;
    }

    public void setMovieid(String movieid) {
        this.movieid = movieid;
    }

    public String getCinemaid() {
        return cinemaid;
    }

    public void setCinemaid(String cinemaid) {
        this.cinemaid = cinemaid;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime;
    }

    

}