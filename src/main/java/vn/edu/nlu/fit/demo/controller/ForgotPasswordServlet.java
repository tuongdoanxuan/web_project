package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.nlu.fit.demo.dao.UserDAO;
import vn.edu.nlu.fit.demo.utils.CSRFTokenUtil;
import vn.edu.nlu.fit.demo.utils.PasswordUtils;

import java.io.IOException;
import java.security.SecureRandom;
import java.util.regex.Pattern;

/**
 * Forgot Password Servlet
 * Handles password reset requests
 * 
 * URL: /forgot-password
 * Methods: GET (show form), POST (process reset request)
 * 
 * NOTE: This is a simplified implementation for development.
 * In production, this should:
 * 1. Generate a secure reset token
 * 2. Store token with expiration time in database
 * 3. Send email with reset link containing token
 * 4. Verify token when user clicks link
 * 5. Allow user to set new password
 * 
 * Current implementation (for development without email service):
 * 1. Generates temporary password
 * 2. Updates password in database
 * 3. Logs temporary password to console
 * 4. Shows success message
 */
@WebServlet("/forgot-password")
public class ForgotPasswordServlet extends HttpServlet {
    
    private UserDAO userDAO;
    
    private static final Pattern EMAIL_PATTERN = 
        Pattern.compile("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$");
    
    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO();
    }
    
    /**
     * GET method - Generate CSRF token for forgot password form
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        CSRFTokenUtil.generateToken(request.getSession());
        request.setAttribute("contentPage", "indexContent.jsp");
        request.getRequestDispatcher("/base.jsp").forward(request, response);
    }
    
    /**
     * POST method - Process password reset request
     * 
     * Expected parameters:
     * - email: User's email address
     * - csrfToken: CSRF protection token
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String contextPath = request.getContextPath();
        
        // 1. Validate CSRF token
        String submittedToken = request.getParameter("csrfToken");
        if (!CSRFTokenUtil.validateToken(session, submittedToken)) {
            response.sendRedirect(contextPath + "/index?showModal=forgot&error=csrf");
            return;
        }
        
        // 2. Get email parameter
        String email = request.getParameter("email");
        
        // 3. Validate email
        if (email == null || email.trim().isEmpty()) {
            response.sendRedirect(contextPath + "/index?showModal=forgot&error=empty");
            return;
        }
        
        email = email.trim();
        
        if (!EMAIL_PATTERN.matcher(email).matches()) {
            response.sendRedirect(contextPath + "/index?showModal=forgot&error=invalidEmail");
            return;
        }
        
        // 4. Check if email exists
        // Note: In production, don't reveal if email exists or not (security best practice)
        // But for development/learning, we'll give specific feedback
        if (!userDAO.emailExists(email)) {
            response.sendRedirect(contextPath + "/index?showModal=forgot&error=notFound");
            return;
        }
        
        // 5. Generate temporary password
        String tempPassword = generateTemporaryPassword();
        
        // 6. Update password in database
        String salt = PasswordUtils.generateSalt();
        String hashedPassword = PasswordUtils.hashPassword(tempPassword, salt);
        
        boolean updated = userDAO.updatePasswordByEmail(email, hashedPassword, salt);
        
        if (updated) {
            // Success - log temporary password for development
            System.out.println("===========================================");
            System.out.println("PASSWORD RESET for: " + email);
            System.out.println("Temporary Password: " + tempPassword);
            System.out.println("===========================================");
            System.out.println("IMPORTANT: In production, this should be sent via email!");
            System.out.println("For now, use this temporary password to log in.");
            System.out.println("===========================================");
            
            // Redirect to login with success message
            response.sendRedirect(contextPath + "/index?showModal=login&resetSuccess=true");
        } else {
            // Failed to update (shouldn't happen, but handle gracefully)
            response.sendRedirect(contextPath + "/index?showModal=forgot&error=failed");
        }
    }
    
    /**
     * Generates a random temporary password
     * Format: 8 characters with uppercase, lowercase, and numbers
     */
    private String generateTemporaryPassword() {
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        SecureRandom random = new SecureRandom();
        StringBuilder password = new StringBuilder();
        
        for (int i = 0; i < 8; i++) {
            password.append(chars.charAt(random.nextInt(chars.length())));
        }
        
        return password.toString();
    }
}
