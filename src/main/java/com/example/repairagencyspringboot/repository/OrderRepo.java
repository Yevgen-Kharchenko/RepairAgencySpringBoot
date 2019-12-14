package com.example.repairagencyspringboot.repository;

import com.example.repairagencyspringboot.model.Orders;
import com.example.repairagencyspringboot.model.User;
import com.example.repairagencyspringboot.model.enums.Status;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface OrderRepo extends CrudRepository<Orders, Long> {

    List<Orders> findAllByStatus(Status status);

    List<Orders> findAllByUser(User user);
}
