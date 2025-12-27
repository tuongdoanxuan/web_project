package vn.edu.nlu.fit.demo.dao;

import vn.edu.nlu.fit.demo.model.Product;
import java.util.List;

public class ProductDAO extends BaseDao {

    private static final String BASE_QUERY = """
        SELECT
            id,
            product_name AS productName,
            price,
            weight,
            sold,
            rating,
            tag,
            description,
            origin
        FROM products
    """;

    // ================= INDEX =================
    public List<Product> getFeaturedProducts() {
        return getJdbi().withHandle(h ->
                h.createQuery(BASE_QUERY + " ORDER BY rating DESC LIMIT 8")
                        .mapToBean(Product.class)
                        .list()
        );
    }

    public Product getHotProduct() {
        return getJdbi().withHandle(h ->
                h.createQuery(BASE_QUERY + " ORDER BY sold DESC LIMIT 1")
                        .mapToBean(Product.class)
                        .findOne()
                        .orElse(null)
        );
    }

    public List<Product> getPromotionProducts() {
        return getJdbi().withHandle(h ->
                h.createQuery(BASE_QUERY + " WHERE tag LIKE '%combo%' LIMIT 8")
                        .mapToBean(Product.class)
                        .list()
        );
    }

    // ================= PRODUCTS =================
    public List<Product> findAll() {
        return getJdbi().withHandle(h ->
                h.createQuery(BASE_QUERY)
                        .mapToBean(Product.class)
                        .list()
        );
    }

    public List<Product> findByKeyword(String keyword) {
        return getJdbi().withHandle(h ->
                h.createQuery(BASE_QUERY + " WHERE product_name LIKE :kw")
                        .bind("kw", "%" + keyword + "%")
                        .mapToBean(Product.class)
                        .list()
        );
    }

    // ================= DETAIL =================
    public Product findById(int id) {
        return getJdbi().withHandle(h ->
                h.createQuery(BASE_QUERY + " WHERE id_products = :id")
                        .bind("id", id)
                        .mapToBean(Product.class)
                        .findOne()
                        .orElse(null)
        );
    }
    // ================= SORT HELP =================
    private String buildOrderBy(String sort) {
        return switch (sort) {
            case "rating" -> " ORDER BY rating DESC";
            case "price-asc" -> " ORDER BY price ASC";
            case "price-desc" -> " ORDER BY price DESC";
            default -> " ORDER BY RAND()";
        };
    }
    public List<Product> findAllSorted(String sort) {
        return getJdbi().withHandle(h ->
                h.createQuery(BASE_QUERY + buildOrderBy(sort))
                        .mapToBean(Product.class)
                        .list()
        );
    }
    public List<Product> findByKeywordSorted(String keyword, String sort) {
        return getJdbi().withHandle(h ->
                h.createQuery(BASE_QUERY
                                + " WHERE product_name LIKE :kw "
                                + buildOrderBy(sort))
                        .bind("kw", "%" + keyword + "%")
                        .mapToBean(Product.class)
                        .list()
        );
    }

}
