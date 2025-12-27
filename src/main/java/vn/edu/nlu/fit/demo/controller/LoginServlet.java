package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.nlu.fit.demo.dao.UserDAO;
import vn.edu.nlu.fit.demo.model.User;
import vn.edu.nlu.fit.demo.utils.CSRFTokenUtil;
import vn.edu.nlu.fit.demo.utils.SessionUtil;

import java.io.IOException;

/**
 * Login Servlet
 * Handles user authentication
 * 
 * URL: /login
 * Methods: GET (show form), POST (process login)
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    
    private UserDAO userDAO;
    
    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO();
    }
    
    /**
     * GET method - Generate CSRF token for login form
     * This is called when the page with login form loads
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Generate CSRF token and store in session
        CSRFTokenUtil.generateToken(request.getSession());
        
        // Forward to index page which includes the modal
        request.setAttribute("contentPage", "indexContent.jsp");
        request.getRequestDispatcher("/base.jsp").forward(request, response);
    }
    
    /**
     * POST method - Process login form submission
     * 
     * Expected parameters:
     * - email: User's email address
     * - password: User's password
     * - csrfToken: CSRF protection token
     * - redirect: (Optional) Page to redirect to after successful login
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String contextPath = request.getContextPath();
        
        // 1. Validate CSRF token
        String submittedToken = request.getParameter("csrfToken");
        if (!CSRFTokenUtil.validateToken(session, submittedToken)) {
            response.sendRedirect(contextPath + "/index?showModal=login&error=csrf");
            return;
        }
        
        // 2. Get form parameters
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String redirectUrl = request.getParameter("redirect");
        
        // 3. Validate input
        if (email == null || email.trim().isEmpty() || 
            password == null || password.trim().isEmpty()) {
            response.sendRedirect(contextPath + "/index?showModal=login&error=empty");
            return;
        }
        
        // 4. Attempt login
        User user = userDAO.loginEmail(email.trim(), password);
        
        if (user != null) {
            // Login successful
            
            // Store user in session
            SessionUtil.setUser(session, user);
            
            // Regenerate session ID for security (prevents session fixation attacks)
            request.changeSessionId();
            
            // Generate new CSRF token for the new session
            CSRFTokenUtil.generateToken(session);
            
            // Redirect to original page or home
            if (redirectUrl != null && !redirectUrl.isEmpty() && redirectUrl.startsWith("/")) {
                response.sendRedirect(contextPath + redirectUrl);
            } else {
                response.sendRedirect(contextPath + "/index");
            }
        } else {
            // Login failed - invalid credentials
            response.sendRedirect(contextPath + "/index?showModal=login&error=invalid");
        }
    }
}
