package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.demo.model.Product;
import vn.edu.nlu.fit.demo.services.ProductService;

import java.io.IOException;

@WebServlet(name = "ProductControllerServlet", value = "/product")
public class ProductControllerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        ProductService ps = new ProductService();
        Product product = ps.getProduct(id);

        request.setAttribute("product", product);
        request.getRequestDispatcher("/products_detail.jsp")
                .forward(request, response);
    }
}
