package ru.abtank.model;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "products")
public class Product {

    @Id
    @Column (name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "products")
    private String name;

    @Column (name = "category_id")
    @ManyToOne
    private Category category;

    @Column (name = "category_id")
    @ManyToOne
    private Brand brand;

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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Category getCtaegory() {
        return category;
    }

    public void setCtaegory(Category category) {
        this.category = category;
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

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
