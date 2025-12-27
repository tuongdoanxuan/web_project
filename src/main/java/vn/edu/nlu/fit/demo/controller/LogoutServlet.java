package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.demo.utils.SessionUtil;

import java.io.IOException;

/**
 * Logout Servlet
 * Handles user logout
 * 
 * URL: /logout
 * Methods: GET
 */
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    
    /**
     * GET method - Process logout
     * Clears session and redirects to home page
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Clear all session data (logs out user)
        SessionUtil.clearSession(request.getSession());
        
        // Redirect to home page
        response.sendRedirect(request.getContextPath() + "/index");
    }
}
