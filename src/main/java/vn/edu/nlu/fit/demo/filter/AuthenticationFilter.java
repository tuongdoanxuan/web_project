package vn.edu.nlu.fit.demo.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.demo.utils.SessionUtil;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * Authentication Filter
 * 
 * WHAT IS A FILTER?
 * A filter is a component that intercepts requests before they reach servlets/JSPs.
 * It can inspect, modify, or block requests based on certain conditions.
 * 
 * FILTER EXECUTION FLOW:
 * 
 * Without filter:
 * Browser --> Servlet --> JSP --> Response
 * 
 * With filter:
 * Browser --> Filter (check) --> Servlet --> JSP --> Response
 *                    |
 *                    v
 *              Block & Redirect
 *              (if not logged in)
 * 
 * EXAMPLE SCENARIO:
 * 
 * User tries to access: http://bienxanh.com/account.jsp
 *   |
 *   v
 * Filter intercepts request
 *   |
 *   v
 * Check: Is user logged in?
 *   |
 *   +---> YES --> Allow access to account.jsp
 *   |
 *   +---> NO --> Redirect to: /index?showModal=login&redirect=/account.jsp
 *                                                        |
 *                                                        v
 *                                          After login, redirect back to account.jsp
 * 
 * WHY USE A FILTER INSTEAD OF CHECKING IN EACH PAGE?
 * 
 * Without filter (Bad - Code duplication):
 * In account.jsp:
 *     if (session.getAttribute("user") == null) redirect to login
 * In cart.jsp:
 *     if (session.getAttribute("user") == null) redirect to login
 * In checkout.jsp:
 *     if (session.getAttribute("user") == null) redirect to login
 * Problem: Same code repeated everywhere! Hard to maintain.
 * 
 * With filter (Good - Centralized):
 * Filter checks once for all protected pages.
 * Single place to modify security logic.
 * 
 * FILTER URL PATTERNS:
 * This filter uses urlPatterns to specify which pages to protect.
 * Examples:
 * - "/account.jsp" - Exact match
 * - "/admin/*" - All pages under /admin/
 * - "*.do" - All URLs ending with .do
 * 
 * FILTER LIFECYCLE:
 * 1. init() - Called once when server starts
 * 2. doFilter() - Called for every matching request
 * 3. destroy() - Called once when server stops
 */
@WebFilter(urlPatterns = {
    "/account.jsp",
    "/cart.jsp", 
    "/checkout.jsp",
    "/myOrders.jsp",
    "/myOrders_detail.jsp",
    "/change-password.jsp",
    "/payment.jsp",
    "/favoriteProduct.jsp",
    "/point.jsp"
})
public class AuthenticationFilter implements Filter {
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Called once when filter is initialized
        System.out.println("AuthenticationFilter initialized - protecting pages that require login");
    }
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        
        // Check if user is logged in
        if (!SessionUtil.isLoggedIn(httpRequest.getSession())) {
            // User is not logged in - redirect to home with login modal
            
            // Get the page they were trying to access
            String requestedPage = httpRequest.getRequestURI();
            String contextPath = httpRequest.getContextPath();
            
            // Remove context path to get relative URL
            String redirectAfterLogin = requestedPage.substring(contextPath.length());
            
            // Redirect to index with login modal and remember where they wanted to go
            httpResponse.sendRedirect(contextPath + "/index?showModal=login&redirect=" + redirectAfterLogin);
            return;
        }
        
        // User is logged in - allow request to continue
        chain.doFilter(request, response);
    }
    
    @Override
    public void destroy() {
        // Called once when filter is destroyed
        System.out.println("AuthenticationFilter destroyed");
    }
}
