package vn.edu.nlu.fit.demo.controller;

import vn.edu.nlu.fit.demo.model.Product;
import vn.edu.nlu.fit.demo.services.SearchService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String keyword = request.getParameter("keyword");

        List<Product> list =
                SearchService.getInstance().getSearchResult(keyword);

        request.setAttribute("productList", list);
        request.setAttribute("contentPage", "products.jsp");

        request.getRequestDispatcher("/base.jsp").forward(request, response);
    }
}


