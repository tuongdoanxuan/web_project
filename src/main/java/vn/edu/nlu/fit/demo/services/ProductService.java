package vn.edu.nlu.fit.demo.services;

import vn.edu.nlu.fit.demo.dao.ProductDAO;
import vn.edu.nlu.fit.demo.model.Product;

import java.util.List;

public class ProductService {
    ProductDAO pd = new ProductDAO();

    public List<Product> getListProduct() {
        return pd.getListProduct();
    }

    public Product getProduct(int id) {
        return pd.getProductById(id);
    }
}
