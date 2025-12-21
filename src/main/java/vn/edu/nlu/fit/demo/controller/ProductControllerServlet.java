package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.demo.services.ProductService;

import java.io.IOException;

@WebServlet("/index")
public class ProductControllerServlet extends HttpServlet {

    private ProductService service;

    @Override
    public void init() {
        service = ProductService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setAttribute("featuredList", service.getFeaturedProducts());
        req.setAttribute("hotProduct", service.getHotProduct());
        req.setAttribute("promotionList", service.getPromotionProducts());

        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}

