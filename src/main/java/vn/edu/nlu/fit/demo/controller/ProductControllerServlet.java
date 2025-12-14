package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.demo.model.Product;
import vn.edu.nlu.fit.demo.services.ProductService;

import java.io.IOException;

@WebServlet(name = "ProductControllerServlet", value = "/list-product")
public class ProductControllerServlet extends HttpServlet {

    private ProductService productService;

    @Override
    public void init() {
        productService = ProductService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // ĐỔI products → list
        request.setAttribute("list", productService.getAllProducts());

        request.getRequestDispatcher("/index.jsp")
                .forward(request, response);
    }
}
