package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.demo.services.ProductService;
import vn.edu.nlu.fit.demo.utils.CSRFTokenUtil;

import java.io.IOException;

@WebServlet(urlPatterns = {"/index", ""})
public class ProductControllerServlet extends HttpServlet {

    private ProductService service;

    @Override
    public void init() {
        service = ProductService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        CSRFTokenUtil.generateToken(req.getSession());

        req.setAttribute("featuredList", service.getFeaturedProducts());
        req.setAttribute("promotionList", service.getPromotionProducts());
        req.setAttribute("hotProduct", service.getHotProduct());

        req.setAttribute("contentPage", "indexContent.jsp");
        req.setAttribute("pageTitle", "Trang chủ | Biển Xanh");

        req.getRequestDispatcher("/base.jsp").forward(req, resp);
    }
}


