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
public class SuperShowTimeDTO {
    private String showtimeid;
    private String movieid;
    private String cinemaid;
    private String day;
    private String starttime;
    private String moviid;
    private String namemovie;
    private String director;
    private String actor;
    private String genre;
    private String relase_date;
    private String duration;
    private String imgmovie;
    private String imgbanner;
    private String trailer;
    private String intro;
    private String cinemid;
    private String cinemaname;
   
    public SuperShowTimeDTO() {
    }

    public SuperShowTimeDTO(String showtimeid, String movieid, String cinemaid, String day, String starttime, String moviid, String namemovie, String director, String actor, String genre, String relase_date, String duration, String imgmovie, String imgbanner, String trailer, String intro, String cinemid, String cinemaname) {
        this.showtimeid = showtimeid;
        this.movieid = movieid;
        this.cinemaid = cinemaid;
        this.day = day;
        this.starttime = starttime;
        this.moviid = moviid;
        this.namemovie = namemovie;
        this.director = director;
        this.actor = actor;
        this.genre = genre;
        this.relase_date = relase_date;
        this.duration = duration;
        this.imgmovie = imgmovie;
        this.imgbanner = imgbanner;
        this.trailer = trailer;
        this.intro = intro;
        this.cinemid = cinemid;
        this.cinemaname = cinemaname;
    }

    public String getShowtimeid() {
        return showtimeid;
    }

    public void setShowtimeid(String showtimeid) {
        this.showtimeid = showtimeid;
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

    public String getMoviid() {
        return moviid;
    }

    public void setMoviid(String moviid) {
        this.moviid = moviid;
    }

    public String getNamemovie() {
        return namemovie;
    }

    public void setNamemovie(String namemovie) {
        this.namemovie = namemovie;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getRelase_date() {
        return relase_date;
    }

    public void setRelase_date(String relase_date) {
        this.relase_date = relase_date;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getImgmovie() {
        return imgmovie;
    }

    public void setImgmovie(String imgmovie) {
        this.imgmovie = imgmovie;
    }

    public String getImgbanner() {
        return imgbanner;
    }

    public void setImgbanner(String imgbanner) {
        this.imgbanner = imgbanner;
    }

    public String getTrailer() {
        return trailer;
    }

    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getCinemid() {
        return cinemid;
    }

    public void setCinemid(String cinemid) {
        this.cinemid = cinemid;
    }

    public String getCinemaname() {
        return cinemaname;
    }

    public void setCinemaname(String cinemaname) {
        this.cinemaname = cinemaname;
    }

   
    
}
