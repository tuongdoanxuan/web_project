package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

//http://localhost:8080/demo_war_exploded/admin/dashboard.jsp
@WebServlet(name = "AdminController", value = "/admin")
public class AdminDashboardServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        // implement check user role is admin here
        request.setAttribute("pageTitle", "Dashboard");
        request.getRequestDispatcher("/admin/dashboard.jsp").forward(request, response);
    }

}
