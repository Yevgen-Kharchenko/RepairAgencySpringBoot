package com.example.repairagencyspringboot.repository;

import com.example.repairagencyspringboot.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepo extends CrudRepository<User, Long> {

    boolean existsByLogin(String login);

    User findByLogin(String login);

    Page<User> findAll(Pageable pageable);

    List<User> findAll();

}
