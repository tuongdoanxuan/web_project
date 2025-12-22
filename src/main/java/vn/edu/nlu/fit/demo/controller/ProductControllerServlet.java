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

        // ✅ LOAD DATA TỪ DB
        req.setAttribute("featuredList", service.getFeaturedProducts());
        req.setAttribute("promotionList", service.getPromotionProducts());
        req.setAttribute("hotProduct", service.getHotProduct());

        // ✅ SET CONTENT
        req.setAttribute("contentPage", "indexContent.jsp");
        req.setAttribute("pageTitle", "Trang chủ | Biển Xanh");


        req.getRequestDispatcher("/base.jsp").forward(req, resp);
    }
}


