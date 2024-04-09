    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.MovieDTO;
import dto.AccountDTO;


import dto.SeatDTO;
import dto.ShowTimeDTO;
import dto.SuperShowTimeDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author ADMIN
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<MovieDTO> getAllmovie() {
        List<MovieDTO> listM = new ArrayList<>();
        String sql = "select * from movie";
        try {
            conn = new DBUtils().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                listM.add(new MovieDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return listM;
    }

      public List<SuperShowTimeDTO> getAllShowTime() {
        List<SuperShowTimeDTO> listT = new ArrayList<>();
        String sql = "select * from showtime, movie, cinema";
        try {
            conn = new DBUtils().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                listT.add(new SuperShowTimeDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                         rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                         rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                         rs.getString(16),
                        rs.getString(17),
                        rs.getString(18)));
            }
        } catch (Exception e) {
        }
        return listT;
    }

//      public List<ShowTimeDTO> getShowTimeByID(String id) {
//
//      List<ShowTimeDTO > listS = new ArrayList<>();
//        String sql = "select * from showtime"
//                + "join movie on showtime.Movie_ID = movie.Movie_ID\n" +
//                  "join cinema on showtime.Cinema_ID = cinema.Cinema_ID"
//                + "where Movie_ID = ?";
//          try {
//            conn = new DBUtils().getConnection();
//            ps = conn.prepareStatement(sql);
//            ps.setString(1, id);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                listS.add (new ShowTimeDTO(
//                        rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),                        
//                        rs.getString(5)));
//            }
//        } catch (Exception e) {
//        }
//        return listS;
//    }
//    public List<CinemaDTO> getAllcinema() {
//        List<CinemaDTO> listC = new ArrayList<>();
//        String sql = "select * from cinema";
//        try {
//            conn = new DBUtils().getConnection();
//            ps = conn.prepareStatement(sql);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                listC.add(new CinemaDTO(rs.getInt(1),
//                        rs.getString(2)));
//            }
//        } catch (Exception e) {
//        }
//        return listC;
//    }

    public MovieDTO getMovieByID(String id) {

        String sql = "select * from movie \n"
                + "where Movie_ID =?";
        try {
            conn = new DBUtils().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return (new MovieDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11)));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public AccountDTO login(String email, String phone, String pass) {
        String sql = "select * from account \n"
                + "where email =?\n"
                + " or phone =? \n"
                + "and password = ?";
        try {
            conn = new DBUtils().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, phone);
            ps.setString(3, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new AccountDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),                    
                        rs.getString(4));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
//    public void UpdateUser (String username, String email, String password, String phone){
//        String sql ="update account set "
//                + "username = ? ,"
//                + "email = ? ,"
//                + "password = ?,"
//                + "phone = ?"
//                + "where  "
//    }
    
    public void UpdateMovie (String movieid,
                            String namemovie,
                            String director,
                            String actor,
                            String genre,
                            String releasedate,
                            String duration,
                            String imgmovie,
                            String imgbanner,
                            String trailer,
                            String intro){
        
     String sql ="  update movie set \n" 
            +"namemovie =?,\n" 
            +"director = ?,\n" 
            +"actor = ? ,\n" 
            +"Genre = ? ,\n"  
            +"release_date = ? , \n" 
            +"duration = ? ,\n" 
            +"imgmovie = ? ,\n" 
            +"imgbanner = ? ,\n" 
            +"trailer = ? ,\n" 
            +"intro= ? \n" 
            +"where Movie_ID = ? " ;  
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,namemovie);
            ps.setString(2,director);
            ps.setString(3,actor);
            ps.setString(4,genre);
            ps.setString(5, releasedate);
            ps.setString(6,duration);
            ps.setString(7,imgmovie);
            ps.setString(8,imgbanner);
            ps.setString(9,trailer);
            ps.setString(10,intro);
            ps.setString(11,movieid);
            ps.executeUpdate();
            
                    
        } catch (Exception e) {
        }
    }
    
public void UpdateAccount (String username, String email, String password, String phone){
    String sql =" update account set \n" 
               + "username = ? ,\n"
               + "password = ? ,\n"
               + "phone= ? \n" 
               + "where email = ? " ;
    try {
        Connection conn = DBUtils.getConnection();
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1,username );
        ps.setString(2,password );
        ps.setString(3,phone );
        ps.setString(4,username );
        ps.executeUpdate();
    } catch (Exception e) {
    }
}
    public AccountDTO checkAccountExist(String user, String email, String phone) {
        String sql = "select * from account \n"
                + "where username = ?\n"
                + " or email = ?\n"
                + " or phone=?";
        try {
            conn = new DBUtils().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, email);
            ps.setString(3, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new AccountDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),                        
                        rs.getString(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void singup(String user, String email, String pass, String phone) {
        String sql = "insert into account(username,email,password,phone)\n"
                + "values(?,?,?,?)";
        try {
            conn = new DBUtils().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, email);
            ps.setString(3, pass);
            ps.setString(4, phone);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<SeatDTO> getAllseat() {
        List<SeatDTO> listS = new ArrayList<>();
        String sql = "select * from bookseat";
        try {
            conn = new DBUtils().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                listS.add(new SeatDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return listS;
    }

//    public static void main(String[] args) {
//        DAO dao = new DAO();
//        List<MovieDTO> list = dao.getAllmovie();
//        for (MovieDTO o : list) {
//            System.out.println(o);
//        }
//    }

  
}
