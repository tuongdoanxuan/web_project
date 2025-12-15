package vn.edu.nlu.fit.demo.controller;

import vn.edu.nlu.fit.demo.model.Product;
import vn.edu.nlu.fit.demo.dao.SearchDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.*;

@WebServlet(name = "SearchServlet", value = "/search")
public class SearchServlet extends HttpServlet
{
    private SearchDAO searchDAO;

    @Override
    public void init() throws ServletException {
        searchDAO = new SearchDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");

        // Validate input (basic example)
        if (keyword == null || keyword.trim().isEmpty()) {
            request.getRequestDispatcher("/list-products").forward(request, response);  // Forward back to form
            return;
        }

        List<Product> results = searchDAO.searchResult(keyword.trim());

        // Set results in request scope for the view
        request.setAttribute("results", results);

        // Forward to the results view (JSP)
        request.getRequestDispatcher("/searchResults.jsp").forward(request, response);
    }
}
