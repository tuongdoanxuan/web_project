package vn.edu.nlu.fit.demo.services;

import vn.edu.nlu.fit.demo.dao.ProductDAO;
import vn.edu.nlu.fit.demo.model.Product;
import java.util.List;

public class ProductService {

    private static ProductService instance;
    private final ProductDAO dao;

    private ProductService() {
        dao = new ProductDAO();
    }

    public static ProductService getInstance() {
        if (instance == null) {
            instance = new ProductService();
        }
        return instance;
    }

    // INDEX
    public List<Product> getFeaturedProducts() {
        return dao.getFeaturedProducts();
    }

    public Product getHotProduct() {
        return dao.getHotProduct();
    }

    public List<Product> getPromotionProducts() {
        return dao.getPromotionProducts();
    }

    // PRODUCTS
    public List<Product> getAllProducts() {
        return dao.findAll();
    }

    public List<Product> getProductsByKeyword(String keyword) {
        return dao.findByKeyword(keyword);
    }

    // DETAIL
    public Product getProductById(int id) {
        return dao.findById(id);
    }
}
