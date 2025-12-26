package vn.edu.nlu.fit.demo.utils;

import jakarta.servlet.http.HttpSession;
import java.security.SecureRandom;
import java.util.Base64;

/**
 * CSRF (Cross-Site Request Forgery) Token Utility
 * 
 * WHAT IS CSRF?
 * Cross-Site Request Forgery is an attack where a malicious website tricks your browser
 * into making unwanted requests to another website where you're already authenticated.
 * 
 * EXAMPLE OF CSRF ATTACK (Without Protection):
 * 1. You log into bienxanh.com
 * 2. You visit evil.com (without logging out from bienxanh.com)
 * 3. evil.com has hidden HTML:
 *    <form action="https://bienxanh.com/change-password" method="POST">
 *        <input name="newPassword" value="hacked123" />
 *    </form>
 *    <script>document.forms[0].submit()</script>
 * 4. Your browser automatically sends your bienxanh.com session cookie with the request
 * 5. Server thinks it's you and changes your password - You're hacked!
 * 
 * HOW CSRF TOKEN PREVENTS THIS:
 * 1. When you load a form, server generates a unique random token
 * 2. Token is stored in your session (server-side)
 * 3. Token is also embedded as hidden field in the form (client-side)
 * 4. When you submit the form, both token and session cookie are sent
 * 5. Server compares: Does the submitted token match the session token?
 * 6. If YES: Request is legitimate (came from our own form)
 * 7. If NO: Request is rejected (might be CSRF attack)
 * 
 * WHY EVIL.COM CAN'T BYPASS THIS:
 * - evil.com doesn't know your unique token (stored in your session)
 * - JavaScript from evil.com can't read bienxanh.com's pages (Same-Origin Policy)
 * - Even if evil.com sends a request, it won't have the correct token
 * 
 * USAGE IN SERVLETS:
 * In doGet (when showing form):
 *     String token = CSRFTokenUtil.generateToken(request.getSession());
 *     // Token is now in session and can be accessed in JSP via ${sessionScope.csrfToken}
 * 
 * In doPost (when processing form):
 *     String submittedToken = request.getParameter("csrfToken");
 *     if (!CSRFTokenUtil.validateToken(request.getSession(), submittedToken)) {
 *         // Reject request - possible CSRF attack
 *         response.sendRedirect("index?error=csrf");
 *         return;
 *     }
 *     // Token is valid, continue processing...
 * 
 * USAGE IN JSP:
 * Add this to every form:
 *     <input type="hidden" name="csrfToken" value="${sessionScope.csrfToken}" />
 */
public class CSRFTokenUtil {
    
    private static final String CSRF_TOKEN_SESSION_KEY = "csrfToken";
    private static final int TOKEN_LENGTH = 32;

    public static String generateToken(HttpSession session) {
        SecureRandom random = new SecureRandom();
        byte[] tokenBytes = new byte[TOKEN_LENGTH];
        random.nextBytes(tokenBytes);
        String token = Base64.getUrlEncoder().withoutPadding().encodeToString(tokenBytes);
        
        session.setAttribute(CSRF_TOKEN_SESSION_KEY, token);
        return token;
    }

    public static boolean validateToken(HttpSession session, String submittedToken) {
        if (submittedToken == null || submittedToken.isEmpty()) {
            return false;
        }
        
        String sessionToken = (String) session.getAttribute(CSRF_TOKEN_SESSION_KEY);
        if (sessionToken == null) {
            return false;
        }
        
        return sessionToken.equals(submittedToken);
    }

    public static String getToken(HttpSession session) {
        return (String) session.getAttribute(CSRF_TOKEN_SESSION_KEY);
    }
}
