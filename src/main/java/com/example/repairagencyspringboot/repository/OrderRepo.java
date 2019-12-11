package com.example.repairagencyspringboot.repository;

import com.example.repairagencyspringboot.entity.Orders;
import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.enums.Status;

import org.springframework.data.domain.Page;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface OrderRepo extends CrudRepository<Orders, Long> {
    List<Orders> findAllByStatus(Status status);
    List<Orders> findAllByUser(User user);


}
