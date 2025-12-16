package vn.edu.nlu.fit.demo.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import vn.edu.nlu.fit.demo.model.Product;
import vn.edu.nlu.fit.demo.services.SearchService;

import java.io.IOException;
import java.util.*;

@WebServlet(name = "SearchServlet", value = "/search")
public class SearchServlet extends HttpServlet
{
    private SearchService searchService;

    @Override
    public void init() throws ServletException {
        searchService = SearchService.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");

        // Validate input (basic example)
        if (keyword == null || keyword.trim().isEmpty()) {
            request.getRequestDispatcher("/index.jsp").forward(request, response);  // Forward back to form
            return;
        }

        List<Product> list = searchService.getSearchResult(keyword);

        request.setAttribute("list", list);

        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
