package vn.edu.nlu.fit.demo.controller;

import vn.edu.nlu.fit.demo.model.Product;
import vn.edu.nlu.fit.demo.services.ProductService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/product-detail")
public class ProductDetailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idRaw = request.getParameter("id");
        if (idRaw == null) {
            response.sendRedirect(request.getContextPath() + "/list-product");
            return;
        }

        int id = Integer.parseInt(idRaw);
        Product product = ProductService.getInstance().getProductById(id);

        if (product == null) {
            response.sendRedirect(request.getContextPath() + "/list-product");
            return;
        }

        request.setAttribute("product", product);
        
        request.setAttribute("contentPage", "products_detail.jsp");
        request.setAttribute("pageTitle", product.getProductName() + " | Biển Xanh");

        request.getRequestDispatcher("/base.jsp").forward(request, response);
    }
}
