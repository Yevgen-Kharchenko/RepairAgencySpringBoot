package com.example.repairagencyspringboot.repository;

import com.example.repairagencyspringboot.entity.Comments;
import com.example.repairagencyspringboot.entity.Orders;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CommentsRepo extends CrudRepository<Comments, Long> {
    List<Comments> findAllByOrders(Orders orders);
}
