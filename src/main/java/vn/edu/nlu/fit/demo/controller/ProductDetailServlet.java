package vn.edu.nlu.fit.demo.controller;

import vn.edu.nlu.fit.demo.model.Product;
import vn.edu.nlu.fit.demo.services.ProductService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ProductDetailServlet", value = "/product")
public class ProductDetailServlet extends HttpServlet {

    private ProductService productService;

    @Override
    public void init() {
        productService = ProductService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idRaw = request.getParameter("id");

        // Không có id
        if (idRaw == null || idRaw.isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/list-product");
            return;
        }

        int id;
        try {
            id = Integer.parseInt(idRaw);
        } catch (NumberFormatException e) {
            response.sendRedirect(request.getContextPath() + "/list-product");
            return;
        }

        Product product = productService.getProductById(id);

        if (product == null) {
            response.sendRedirect(request.getContextPath() + "/list-product");
            return;
        }

        request.setAttribute("product", product);
        request.getRequestDispatcher("/products_detail.jsp")
                .forward(request, response);
    }
}
