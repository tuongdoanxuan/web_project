package vn.edu.nlu.fit.demo.services;

import vn.edu.nlu.fit.demo.dao.SearchDAO;
import vn.edu.nlu.fit.demo.model.Product;

import java.util.List;

public class SearchService
{
    private static SearchService instance;
    private final SearchDAO dao;

    private SearchService() {
        dao = new SearchDAO();
    }

    public static SearchService getInstance()
    {
        if (instance == null) {
            instance = new SearchService();
        }
        return instance;
    }

    public List<Product> getSearchResult(String keyword)
    {
        return dao.searchResult(keyword);
    }
}
