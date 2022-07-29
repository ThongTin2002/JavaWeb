/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.UsersDao;
import entity.Users;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "ProfileServlet", urlPatterns = {"/Profile"})
public class ProfileServlet extends HttpServlet {

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

//        int iduser = Integer.parseInt(request.getParameter("iduser"));
//        String avatar = request.getParameter("avatar");
//        String age = request.getParameter("age");
//        String phone = request.getParameter("phone");
//        String address = request.getParameter("address");
//
//        UsersDao dao = new UsersDao();
//        Users us = dao.checkId(iduser);
//        if (us != null) {
//            dao.changeProfile(new Users(iduser, avatar, age, phone, address));
//            response.sendRedirect("profile.jsp");
//        } else {
//            System.out.println("False");
//        }
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
        HttpSession session = request.getSession();
        session.getAttribute("user_acc");
        Users u = (Users) session.getAttribute("user_acc");
        int iduser = u.getIduser();

        UsersDao udao = new UsersDao();
        Users user = null;
        try {
            user = udao.GetUser(iduser);
        } catch (Exception ex) {
        }
        request.setAttribute("User", user);
        request.getRequestDispatcher("profile.jsp").forward(request, response);
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
        int iduser = Integer.parseInt(request.getParameter("iduser"));
        String avatar = request.getParameter("avatar");
        String age = request.getParameter("age");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        UsersDao dao = new UsersDao();
        Users us = dao.checkId(iduser);
        if (us != null) {
            dao.changeProfile(new Users(iduser, avatar, age, phone, address));
//            request.getRequestDispatcher("profile.jsp").forward(request, response);
        } else {
            System.out.println("False");
        }

        HttpSession session = request.getSession();
        session.getAttribute("user_acc");
        Users u = (Users) session.getAttribute("user_acc");
        int iduser2 = u.getIduser();

        UsersDao udao = new UsersDao();
        Users user = null;
        try {
            user = udao.GetUser(iduser2);
        } catch (Exception ex) {
        }
        request.setAttribute("User", user);
        request.getRequestDispatcher("profile.jsp").forward(request, response);
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
