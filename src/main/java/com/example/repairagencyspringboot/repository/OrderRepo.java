package com.example.repairagencyspringboot.repository;

import com.example.repairagencyspringboot.entity.Orders;
import org.springframework.data.repository.CrudRepository;

public interface OrderRepo extends CrudRepository<Orders, Long> {
}
