package com.example.repairagencyspringboot.repository;

import com.example.repairagencyspringboot.entity.Orders;
import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.enums.Status;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepo extends CrudRepository<User, Long> {

    User findByLogin(String login);
    Page<User> findAll(Pageable pageable);
    List<User> findAll();

}
