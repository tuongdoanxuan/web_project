package vn.edu.nlu.fit.demo.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class Product implements Serializable {
        private int id;
        private String productName;
        private double price;
        private double weight;
        private int sold;
        private double rating;
        private String tag;
        private String description;
        private String origin;

    public Product(int id, String productName, double price, double weight, int sold, double rating, String tag, String description, String origin) {
        this.id = id;
        this.productName = productName;
        this.price = price;
        this.weight = weight;
        this.sold = sold;
        this.rating = rating;
        this.tag = tag;
        this.description = description;
        this.origin = origin;
    }

    public Product() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
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
}
