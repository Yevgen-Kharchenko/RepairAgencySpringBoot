package com.example.repairagencyspringboot.repository;

import com.example.repairagencyspringboot.model.Order;
import com.example.repairagencyspringboot.model.User;
import com.example.repairagencyspringboot.model.enums.Status;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface OrderRepo extends CrudRepository<Order, Long> {

    List<Order> findAllByStatus(Status status);

    List<Order> findAllByUser(User user);
}
