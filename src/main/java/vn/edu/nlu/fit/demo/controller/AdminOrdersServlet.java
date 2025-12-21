package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "AdminOrders", value = "/admin/orders")
public class AdminOrdersServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        // implement check user role is admin here

        request.setAttribute("pageTitle", "Quản Lý Đơn Hàng");
        request.getRequestDispatcher("/admin/orders.jsp").forward(request, response);
    }
}
