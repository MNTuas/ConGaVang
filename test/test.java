
import dao.DAO;
import dto.MovieDTO;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author khong phai Minh Tuan
 */
public class test {
    public static void main(String[] args) {
       DAO dao = new DAO();  
        MovieDTO m = dao.getMovieByID("1");
        System.out.println(m);
}
}