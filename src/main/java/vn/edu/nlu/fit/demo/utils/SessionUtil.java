package vn.edu.nlu.fit.demo.utils;

import jakarta.servlet.http.HttpSession;
import vn.edu.nlu.fit.demo.model.User;

/**
 * VISUAL EXAMPLE:
 * 
 * Request 1 (Login):
 * Browser --> POST /login (email + password) --> Server
 * Server checks credentials: Valid!
 * Server: session.setAttribute("user", userObject)  // Store user in session
 * Server --> Response (Set-Cookie: JSESSIONID=ABC123) --> Browser
 * 
 * Request 2 (View Cart):
 * Browser --> GET /cart (Cookie: JSESSIONID=ABC123) --> Server
 * Server: session.getAttribute("user")  // Retrieve user from session
 * Server knows: "This is the same user who logged in!"
 * Server --> Show cart for this user --> Browser
 * 
 * Request 3 (Checkout):
 * Browser --> POST /checkout (Cookie: JSESSIONID=ABC123) --> Server
 * Server: session.getAttribute("user")  // Still the same user!
 * Server --> Process order for this user --> Browser
 * 
 * Request 4 (Logout):
 * Browser --> GET /logout (Cookie: JSESSIONID=ABC123) --> Server
 * Server: session.invalidate()  // Clear all session data
 * Server --> Response --> Browser
 * User is now logged out
 * 
 * WHY USE THIS UTILITY CLASS?
 * Instead of writing session.getAttribute("user") everywhere in our code,
 * we centralize session management in one place. Benefits:
 * 1. Consistent attribute naming (always "user", never "currentUser" or "loggedInUser")
 * 2. Type safety (returns User object, not generic Object)
 * 3. Easy to change implementation later
 * 4. Clear documentation of what's stored in session
 * 
 * USAGE IN SERVLETS:
 * 
 * After successful login:
 *     User user = userDAO.loginEmail(email, password);
 *     if (user != null) {
 *         SessionUtil.setUser(request.getSession(), user);
 *     }
 * 
 * To check if user is logged in:
 *     if (SessionUtil.isLoggedIn(request.getSession())) {
 *         // User is logged in
 *     } else {
 *         // User is not logged in - redirect to login
 *     }
 * 
 * To get current user:
 *     User currentUser = SessionUtil.getUser(request.getSession());
 *     String name = currentUser.getFirstName();
 * 
 * On logout:
 *     SessionUtil.clearSession(request.getSession());
 * 
 * USAGE IN JSP:
 * Check if logged in:
 *     <c:if test="${not empty sessionScope.user}">
 *         Welcome, ${sessionScope.user.firstName}
 *     </c:if>
 * 
 * Show different content based on login state:
 *     <c:choose>
 *         <c:when test="${not empty sessionScope.user}">
 *             Logged in content
 *         </c:when>
 *         <c:otherwise>
 *             Please log in
 *         </c:otherwise>
 *     </c:choose>
 */
public class SessionUtil {
    
    private static final String USER_SESSION_KEY = "user";

    public static void setUser(HttpSession session, User user) {
        session.setAttribute(USER_SESSION_KEY, user);
    }
    
    public static User getUser(HttpSession session) {
        return (User) session.getAttribute(USER_SESSION_KEY);
    }

    public static boolean isLoggedIn(HttpSession session) {
        return session.getAttribute(USER_SESSION_KEY) != null;
    }
    
    public static void clearSession(HttpSession session) {
        session.invalidate();
    }
    
    public static String getUserFullName(HttpSession session) {
        User user = getUser(session);
        if (user != null) {
            return user.getFirstName() + " " + user.getLastName();
        }
        return "Guest";
    }
    
    public static boolean isAdmin(HttpSession session) {
        User user = getUser(session);
        return user != null && "ADMIN".equalsIgnoreCase(user.getRole());
    }
}
