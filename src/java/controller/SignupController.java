/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DAO;
import dto.AccountDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "SignupController", urlPatterns = {"/signup"})
public class SignupController extends HttpServlet {

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
        String user = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("password");
        String repass = request.getParameter("repassword");
        if (!pass.equals(repass)) {
            response.sendRedirect("signup.jsp");
        } else {
            DAO dao = new DAO();
            AccountDTO a = dao.checkAccountExist(user, email, phone);
            if (a == null) {
                //neu chua co thi day ve trang home
                dao.singup(user, email, pass, phone);
                response.sendRedirect("login.jsp");
            } else if (user.isEmpty() || email.isEmpty() || phone.isEmpty() || pass.isEmpty() || repass.isEmpty()) {
                request.setAttribute("mess", "You can't input empty");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            } else if (a.getUsername().equals(user)) {
                //co du lieu roi day ve trang signup
                request.setAttribute("mess", "Wrong username is exist");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            } else if(a.getEmail().equals(email)){
                request.setAttribute("mess", "Wrong email is exists");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }else if(a.getPhone().equals(phone)){
                request.setAttribute("mess", "Wrong phone is exists");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
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
        processRequest(request, response);
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
        processRequest(request, response);
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
