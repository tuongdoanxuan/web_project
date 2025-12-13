package vn.edu.nlu.fit.demo.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class Product implements Serializable {
    private int idProducts;
    private int categoriesId;
    private String productName;
    private double price;
    private double weight;
    private int sold;
    private String tag;
    private double rating;
    private Timestamp createdAt;
    private String description;
    private String origin;
    private int stock;
    private double oldPrice;

    public Product(int idProducts, int categoriesId, String productName, double price, double weight, int sold, String tag, double rating, Timestamp createdAt, String description, String origin, int stock, double oldPrice) {
        this.idProducts = idProducts;
        this.categoriesId = categoriesId;
        this.productName = productName;
        this.price = price;
        this.weight = weight;
        this.sold = sold;
        this.tag = tag;
        this.rating = rating;
        this.createdAt = createdAt;
        this.description = description;
        this.origin = origin;
        this.stock = stock;
        this.oldPrice = oldPrice;
    }

    public Product() {
    }

    public int getIdProducts() {
        return idProducts;
    }

    public void setIdProducts(int idProducts) {
        this.idProducts = idProducts;
    }

    public int getCategoriesId() {
        return categoriesId;
    }

    public void setCategoriesId(int categoriesId) {
        this.categoriesId = categoriesId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public double getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(double oldPrice) {
        this.oldPrice = oldPrice;
    }
}
