package ru.abtank.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table (name = "brands")
public class Brand {

    @Id
    @Column (name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column (name = "name", unique = true, nullable = false)
    private String name;

    @OneToMany(
            mappedBy = "brand",
            cascade = CascadeType.ALL)
    private List<Product> products;

    @Column
    private String description;

    public Brand() {
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
