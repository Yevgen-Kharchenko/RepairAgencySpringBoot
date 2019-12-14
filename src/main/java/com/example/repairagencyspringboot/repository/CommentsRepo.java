package com.example.repairagencyspringboot.repository;

import com.example.repairagencyspringboot.model.Comment;
import com.example.repairagencyspringboot.model.Order;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CommentsRepo extends CrudRepository<Comment, Long> {

    List<Comment> findAllByOrder(Order order);
}
