package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.demo.dao.ProductDAO;
import vn.edu.nlu.fit.demo.model.Product;
import vn.edu.nlu.fit.demo.services.ProductService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name="ProductDetailServlet", value ="/list-product")
public class ProductDetailServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProductDAO dao = new ProductDAO();

        String idParam = request.getParameter("id");

        // ===== TRANG CHI TIẾT =====
        if (idParam != null) {
            int id = Integer.parseInt(idParam);
            Product product = dao.getProductById(id);

            request.setAttribute("product", product);
            request.getRequestDispatcher("products_detail.jsp")
                    .forward(request, response);
            return;
        }

        // ===== TRANG INDEX =====
        List<Product> list = dao.getListProduct();
        request.setAttribute("list", list);
        request.getRequestDispatcher("index.jsp")
                .forward(request, response);
    }
}