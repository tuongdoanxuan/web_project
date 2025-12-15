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

    // Lấy danh sách sản phẩm (index.jsp)
    public List<Product> getAllProducts() {
        return dao.getAll();
    }

    // Lấy chi tiết 1 sản phẩm
    public Product getProductById(int id) {
        return dao.findById(id);
    }
}
