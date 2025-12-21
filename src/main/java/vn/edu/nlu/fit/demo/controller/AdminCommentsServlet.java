package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "AdminComments", value = "/admin/comments")
public class AdminCommentsServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        // implement check user role is admin here

        request.setAttribute("pageTitle", "Phân quyền");
        request.getRequestDispatcher("/admin/comment.jsp").forward(request, response);
    }
}
