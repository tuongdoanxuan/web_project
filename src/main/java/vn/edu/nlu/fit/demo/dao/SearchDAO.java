package vn.edu.nlu.fit.demo.dao;

import org.jdbi.v3.core.statement.Query;
import vn.edu.nlu.fit.demo.model.Product;

import java.util.List;

public class SearchDAO extends BaseDao
{
    public <Product> searchResult(String keyword)
    {
        String query = "SELECT * FROM products WHERE product_name LIKE :keyword OR description LIKE :keyword";

        return getJdbi().withHandle(handle ->
                handle.createQuery(query)
                        .bind("keyword", "%" + keyword + "%")  // Bind the parameter with wildcards
                        .mapToBean(Product.class)
                        .list()
        );
    }
}
