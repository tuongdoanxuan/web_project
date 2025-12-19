package vn.edu.nlu.fit.demo.controller;

import vn.edu.nlu.fit.demo.model.Product;
import vn.edu.nlu.fit.demo.services.ProductService;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/product")
public class ProductDetailServlet extends HttpServlet {

    private ProductService service;

    @Override
    public void init() {
        service = ProductService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        req.setAttribute("product", service.getProductById(id));

        req.getRequestDispatcher("/products_detail.jsp").forward(req, resp);
    }
}

