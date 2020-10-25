package ru.abtank.model;

import javax.persistence.*;

@Entity
@Table (name = "orders")
public class Order {

    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    @ManyToOne
    @Column(name = "user_id")
    @JoinColumn(name = "id")
    User user;

    public Order() {
    }

    public void setId(String id) {
        this.id = id;
    }

    @Id
    public String getId() {
        return id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
