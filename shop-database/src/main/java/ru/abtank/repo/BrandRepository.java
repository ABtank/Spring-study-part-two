package ru.abtank.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.abtank.model.Brand;

@Repository
public interface BrandRepository extends JpaRepository<Brand, Long> {
}
