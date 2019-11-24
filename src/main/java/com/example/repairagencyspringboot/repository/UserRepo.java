package com.example.repairagencyspringboot.repository;

import com.example.repairagencyspringboot.entity.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepo extends CrudRepository<User, Long> {

    User findByLogin(String login);
}
