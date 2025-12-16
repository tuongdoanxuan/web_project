package vn.edu.nlu.fit.demo;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "test", value = "/test")
public class TestServlet extends HttpServlet {
    public void init() {
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("pageTitle", "test");
        request.setAttribute("contentPage", "test.jsp");
        request.getRequestDispatcher("/base.jsp").forward(request, response);
    }
}