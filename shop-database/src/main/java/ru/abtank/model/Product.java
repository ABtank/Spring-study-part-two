package ru.abtank.model;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "products")
public class Product {

    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    @Column(name = "products")
    private String name;

    @Column (name = "category_id")
    @ManyToOne
    Ctaegory ctaegory;

    @Column (name = "category_id")
    @ManyToOne
    Brand brand;

    @Column(name = "price")
    private BigDecimal price;

    @Column(name = "rating")
    private Integer rating;

    @Column(name = "discount")
    private BigDecimal discount;

    @Column(name = "novelty")
    private Integer novelty;

    public Product() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Ctaegory getCtaegory() {
        return ctaegory;
    }

    public void setCtaegory(Ctaegory ctaegory) {
        this.ctaegory = ctaegory;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public BigDecimal getDiscount() {
        return discount;
    }

    public void setDiscount(BigDecimal discount) {
        this.discount = discount;
    }

    public Integer getNovelty() {
        return novelty;
    }

    public void setNovelty(Integer novelty) {
        this.novelty = novelty;
    }
}
