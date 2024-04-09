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
public class MovieDTO {
    private String movieid;
    private String namemovie;
    private String director;
    private String actor;
    private String genre;
    private String releasedate;
    private String duration;
     private String imgmovie;
    private String imgbanner;
    private String trailer;
    private String intro;


   

    public MovieDTO() {
    }

    public MovieDTO(String movieid, String namemovie, String director, String actor, String genre, String releasedate, String duration, String imgmovie, String imgbanner, String trailer, String intro) {
        this.movieid = movieid;
        this.namemovie = namemovie;
        this.director = director;
        this.actor = actor;
        this.genre = genre;
        this.releasedate = releasedate;
        this.duration = duration;
        this.imgmovie = imgmovie;
        this.imgbanner = imgbanner;
        this.trailer = trailer;
        this.intro = intro;
    }

    public String getMovieid() {
        return movieid;
    }

    public void setMovieid(String movieid) {
        this.movieid = movieid;
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

    public String getReleasedate() {
        return releasedate;
    }

    public void setReleasedate(String releasedate) {
        this.releasedate = releasedate;
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

    


   
    
    
    
}

