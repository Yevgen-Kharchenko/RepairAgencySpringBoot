package com.example.repairagencyspringboot.repository;

import com.example.repairagencyspringboot.entity.Feedback;
import org.springframework.data.repository.CrudRepository;

public interface FeedbackRepo extends CrudRepository<Feedback, Long> {


}
