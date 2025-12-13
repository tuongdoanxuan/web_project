package vn.edu.nlu.fit.demo.dao;

import vn.edu.nlu.fit.demo.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDAO extends BaseDao {
    static Map<Integer,Product> data = new HashMap<>();
    static {
        Product p1 = new Product();
        p1.setIdProducts(1);
        p1.setProductName("Tôm hùm Alaska");
        p1.setPrice(1500000);
        p1.setOldPrice(1700000);
        p1.setWeight(1.2);
        p1.setSold(35);
        p1.setStock(45);
        p1.setTag("tom-hum");
        p1.setRating(4.8);
        p1.setOrigin("Alaska, Mỹ");
        p1.setDescription(
                "Tôm hùm Alaska tươi sống, thịt chắc, ngọt tự nhiên, " +
                        "được bảo quản theo tiêu chuẩn xuất khẩu, phù hợp các món cao cấp."
        );
        Product p2 = new Product();
        p1.setIdProducts(1);
        p1.setProductName("Tôm hùm Alaska");
        p1.setPrice(1500000);
        p1.setOldPrice(1700000);
        p1.setWeight(1.2);
        p1.setSold(35);
        p1.setStock(45);
        p1.setTag("tom-hum");
        p1.setRating(4.8);
        p1.setOrigin("Alaska, Mỹ");
        p1.setDescription(
                "Tôm hùm Alaska tươi sống, thịt chắc, ngọt tự nhiên, " +
                        "được bảo quản theo tiêu chuẩn xuất khẩu, phù hợp các món cao cấp."
        );
        Product p3 = new Product();
        p1.setIdProducts(1);
        p1.setProductName("Tôm hùm Alaska");
        p1.setPrice(1500000);
        p1.setOldPrice(1700000);
        p1.setWeight(1.2);
        p1.setSold(35);
        p1.setStock(45);
        p1.setTag("tom-hum");
        p1.setRating(4.8);
        p1.setOrigin("Alaska, Mỹ");
        p1.setDescription(
                "Tôm hùm Alaska tươi sống, thịt chắc, ngọt tự nhiên, " +
                        "được bảo quản theo tiêu chuẩn xuất khẩu, phù hợp các món cao cấp."
        );
        Product p4 = new Product();
        p1.setIdProducts(1);
        p1.setProductName("Tôm hùm Alaska");
        p1.setPrice(1500000);
        p1.setOldPrice(1700000);
        p1.setWeight(1.2);
        p1.setSold(35);
        p1.setStock(45);
        p1.setTag("tom-hum");
        p1.setRating(4.8);
        p1.setOrigin("Alaska, Mỹ");
        p1.setDescription(
                "Tôm hùm Alaska tươi sống, thịt chắc, ngọt tự nhiên, " +
                        "được bảo quản theo tiêu chuẩn xuất khẩu, phù hợp các món cao cấp."
        );
        Product p5 = new Product();
        p1.setIdProducts(1);
        p1.setProductName("Tôm hùm Alaska");
        p1.setPrice(1500000);
        p1.setOldPrice(1700000);
        p1.setWeight(1.2);
        p1.setSold(35);
        p1.setStock(45);
        p1.setTag("tom-hum");
        p1.setRating(4.8);
        p1.setOrigin("Alaska, Mỹ");
        p1.setDescription(
                "Tôm hùm Alaska tươi sống, thịt chắc, ngọt tự nhiên, " +
                        "được bảo quản theo tiêu chuẩn xuất khẩu, phù hợp các món cao cấp."
        );
        Product p6 = new Product();
        p1.setIdProducts(1);
        p1.setProductName("Tôm hùm Alaska");
        p1.setPrice(1500000);
        p1.setOldPrice(1700000);
        p1.setWeight(1.2);
        p1.setSold(35);
        p1.setStock(45);
        p1.setTag("tom-hum");
        p1.setRating(4.8);
        p1.setOrigin("Alaska, Mỹ");
        p1.setDescription(
                "Tôm hùm Alaska tươi sống, thịt chắc, ngọt tự nhiên, " +
                        "được bảo quản theo tiêu chuẩn xuất khẩu, phù hợp các món cao cấp."
        );

        data.put(1, p1);
        data.put(2, p2);
        data.put(3, p3);
        data.put(4, p4);
        data.put(5, p5);
        data.put(6, p6);

    }
    public List<Product> getListProduct() {
    return new ArrayList<>(data.values());
    }
    public Product getProductById(int id) {
        return data.get(id);
    }
}
