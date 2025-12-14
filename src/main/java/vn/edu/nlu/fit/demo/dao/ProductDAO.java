package vn.edu.nlu.fit.demo.dao;

import vn.edu.nlu.fit.demo.model.Product;

import java.util.List;

public class ProductDAO extends BaseDao {

    // Lấy toàn bộ sản phẩm (index.jsp)
    public List<Product> getAll() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("""
                SELECT 
                    id_products,
                    product_name,
                    price,
                    weight,
                    sold,
                    tag,
                    rating,
                    description,
                    origin
                FROM products
            """)
                        .map((rs, ctx) -> {
                            Product p = new Product();
                            p.setId(rs.getInt("id_products"));
                            p.setProductName(rs.getString("product_name"));
                            p.setPrice(rs.getDouble("price"));
                            p.setWeight(rs.getDouble("weight"));
                            p.setSold(rs.getInt("sold"));
                            p.setTag(rs.getString("tag"));
                            p.setRating(rs.getDouble("rating"));
                            p.setDescription(rs.getString("description"));
                            p.setOrigin(rs.getString("origin"));
                            return p;
                        })
                        .list()
        );
    }

    // Lấy chi tiết 1 sản phẩm (product_detail.jsp)
    public Product findById(int id) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("""
                SELECT 
                    id_products,
                    product_name,
                    price,
                    weight,
                    sold,
                    tag,
                    rating,
                    description,
                    origin
                FROM products
                WHERE id_products = :id
            """)
                        .bind("id", id)
                        .map((rs, ctx) -> {
                            Product p = new Product();
                            p.setId(rs.getInt("id_products"));
                            p.setProductName(rs.getString("product_name"));
                            p.setPrice(rs.getDouble("price"));
                            p.setWeight(rs.getDouble("weight"));
                            p.setSold(rs.getInt("sold"));
                            p.setTag(rs.getString("tag"));
                            p.setRating(rs.getDouble("rating"));
                            p.setDescription(rs.getString("description"));
                            p.setOrigin(rs.getString("origin"));
                            return p;
                        })
                        .findOne()
                        .orElse(null)
        );
    }
}
