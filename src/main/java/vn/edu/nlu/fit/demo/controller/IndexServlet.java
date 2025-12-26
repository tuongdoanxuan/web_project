package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.demo.utils.CSRFTokenUtil;

import java.io.IOException;

@WebServlet(urlPatterns = {"/index", ""})
public class IndexServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        CSRFTokenUtil.generateToken(request.getSession());
        
        request.setAttribute("contentPage", "indexContent.jsp");
        request.getRequestDispatcher("/base.jsp").forward(request, response);
    }
}
