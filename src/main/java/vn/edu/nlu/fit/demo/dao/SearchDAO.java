package vn.edu.nlu.fit.demo.dao;

import vn.edu.nlu.fit.demo.model.Product;

import java.util.List;

public class SearchDAO extends BaseDao {

    private static final String BASE_QUERY = """
        SELECT
            id_products AS id,
            product_name AS productName,
            price,
            weight,
            sold,
            rating,
            tag,
            description,
            origin
        FROM products
        WHERE product_name LIKE :keyword
           OR description LIKE :keyword
    """;

    public List<Product> searchResult(String keyword) {
        return getJdbi().withHandle(handle ->
                handle.createQuery(BASE_QUERY)
                        .bind("keyword", "%" + keyword + "%")
                        .mapToBean(Product.class)
                        .list()
        );
    }
}
