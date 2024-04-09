/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DAO;
import dto.MovieDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author khong phai Minh Tuan
 */
@WebServlet(name = "UpdateMovieControl", urlPatterns = {"/update"})
public class UpdateMovieControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateMovieControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateMovieControl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                response.setContentType("text/html;charset=UTF-8");

        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("uid");
        DAO dao = new DAO();  
        MovieDTO t = dao.getMovieByID(id);
        request.setAttribute("editmovie", t);
        request.getRequestDispatcher("updatemovie.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sid = request.getParameter("movieid");
        String snamemovie = request.getParameter("namemovie");
        String sdirector = request.getParameter("director");  
        String sactor = request.getParameter("actor");
        String sgenre = request.getParameter("genre");
        String sreleasedate = request.getParameter("releasedate");
        String sduration = request.getParameter("duration");
        String simgmovie = request.getParameter("imgmovie");
        String simgbanner = request.getParameter("imgbanner");
        String strailer = request.getParameter("trailer");
        String sintro = request.getParameter("intro");
        DAO dao = new DAO();
        dao.UpdateMovie(sid, snamemovie, sdirector, sactor, sgenre, sreleasedate, sduration, simgmovie, simgbanner, strailer, sintro);
        response.sendRedirect("adhome");

        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}