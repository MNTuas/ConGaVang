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
public class CinemaDTO {
    private int cinemaid;
    private String cinemaname;

    public CinemaDTO() {
    }

    public CinemaDTO(int cinemaid, String cinemaname) {
        this.cinemaid = cinemaid;
        this.cinemaname = cinemaname;
    }

    public int getCinemaid() {
        return cinemaid;
    }

    public void setCinemaid(int cinemaid) {
        this.cinemaid = cinemaid;
    }

    public String getCinemaname() {
        return cinemaname;
    }

    public void setCinemaname(String cinemaname) {
        this.cinemaname = cinemaname;
    }

    @Override
    public String toString() {
        return "CinemaDTO{" + "cinemaid=" + cinemaid + ", cinemaname=" + cinemaname + '}';
    }
    
}
