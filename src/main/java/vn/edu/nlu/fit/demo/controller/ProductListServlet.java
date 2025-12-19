package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.demo.services.ProductService;

import java.io.IOException;

@WebServlet("/products")
public class ProductListServlet extends HttpServlet {

    private ProductService service;

    @Override
    public void init() {
        service = ProductService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String keyword = req.getParameter("keyword");

        if (keyword == null || keyword.isBlank()) {
            req.setAttribute("productList", service.getAllProducts());
        } else {
            req.setAttribute("productList", service.getProductsByKeyword(keyword));
        }

        req.getRequestDispatcher("/products.jsp").forward(req, resp);
    }
}

