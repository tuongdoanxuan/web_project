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
import vn.edu.nlu.fit.demo.utils.PasswordUtils;
import vn.edu.nlu.fit.demo.utils.SessionUtil;

import java.io.IOException;
import java.sql.Date;
import java.util.regex.Pattern;

/**
 * Register Servlet
 * Handles new user registration
 * 
 * URL: /register
 * Methods: GET (show form), POST (process registration)
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    
    private UserDAO userDAO;
    
    private static final Pattern EMAIL_PATTERN = 
        Pattern.compile("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$");
    
    private static final Pattern PHONE_PATTERN = 
        Pattern.compile("^[0-9]{10}$");
    
    private static final int MIN_PASSWORD_LENGTH = 8;
    
    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO();
    }
    
    /**
     * GET method - Generate CSRF token for registration form
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        CSRFTokenUtil.generateToken(request.getSession());
        request.setAttribute("contentPage", "indexContent.jsp");
        request.getRequestDispatcher("/base.jsp").forward(request, response);
    }
    
    /**
     * POST method - Process registration form submission
     * 
     * Expected parameters:
     * - email: User's email address (required)
     * - password: User's password (required, min 8 chars)
     * - confirmPassword: Password confirmation (required)
     * - phone: User's phone number (optional)
     * - firstName: User's first name (required)
     * - lastName: User's last name (required)
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
            response.sendRedirect(contextPath + "/index?showModal=register&error=csrf");
            return;
        }
        
        // 2. Get form parameters
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String phone = request.getParameter("phone");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        
        // 3. Validate required fields
        if (email == null || email.trim().isEmpty() ||
            password == null || password.isEmpty() ||
            confirmPassword == null || confirmPassword.isEmpty() ||
            firstName == null || firstName.trim().isEmpty() ||
            lastName == null || lastName.trim().isEmpty()) {
            
            response.sendRedirect(contextPath + "/index?showModal=register&error=empty");
            return;
        }
        
        // Trim inputs
        email = email.trim();
        firstName = firstName.trim();
        lastName = lastName.trim();
        if (phone != null) {
            phone = phone.trim();
        }
        
        // 4. Validate email format
        if (!EMAIL_PATTERN.matcher(email).matches()) {
            response.sendRedirect(contextPath + "/index?showModal=register&error=invalidEmail");
            return;
        }
        
        // 5. Validate password length
        if (password.length() < MIN_PASSWORD_LENGTH) {
            response.sendRedirect(contextPath + "/index?showModal=register&error=passwordWeak");
            return;
        }
        
        // 6. Validate passwords match
        if (!password.equals(confirmPassword)) {
            response.sendRedirect(contextPath + "/index?showModal=register&error=passwordMismatch");
            return;
        }
        
        // 7. Validate phone format (if provided)
        if (phone != null && !phone.isEmpty() && !PHONE_PATTERN.matcher(phone).matches()) {
            response.sendRedirect(contextPath + "/index?showModal=register&error=invalidPhone");
            return;
        }
        
        // 8. Check if email already exists
        if (userDAO.emailExists(email)) {
            response.sendRedirect(contextPath + "/index?showModal=register&error=emailExists");
            return;
        }
        
        // 9. Create new user
        User newUser = new User();
        newUser.setEmail(email);
        newUser.setFirstName(firstName);
        newUser.setLastName(lastName);
        newUser.setPhone(phone != null && !phone.isEmpty() ? phone : null);
        newUser.setRole("USER");
        newUser.setCreatedDate(new Date(System.currentTimeMillis()));
        
        // Hash password with salt
        String salt = PasswordUtils.generateSalt();
        String hashedPassword = PasswordUtils.hashPassword(password, salt);
        newUser.setSalt(salt);
        newUser.setHashedPassword(hashedPassword);
        
        // 10. Save to database
        boolean registered = userDAO.register(newUser);
        
        if (registered) {
            // Registration successful - auto login
            
            // Retrieve the complete user record (with ID) from database
            User loggedInUser = userDAO.loginEmail(email, password);
            
            if (loggedInUser != null) {
                // Store user in session
                SessionUtil.setUser(session, loggedInUser);
                
                // Regenerate session ID for security
                request.changeSessionId();
                
                // Generate new CSRF token
                CSRFTokenUtil.generateToken(session);
                
                // Redirect to home page
                response.sendRedirect(contextPath + "/index?welcome=true");
            } else {
                // This shouldn't happen, but handle it gracefully
                response.sendRedirect(contextPath + "/index?showModal=login&error=registered");
            }
        } else {
            // Registration failed (database error)
            response.sendRedirect(contextPath + "/index?showModal=register&error=failed");
        }
    }
}
