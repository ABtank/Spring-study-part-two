package ru.abtank.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.abtank.model.User;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findUserByName(String name);

    boolean existsUserByEmail(String email);

    Optional<User> findUserByEmail(String email);
}
