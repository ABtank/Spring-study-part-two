package ru.abtank.repo;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.abtank.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
}
