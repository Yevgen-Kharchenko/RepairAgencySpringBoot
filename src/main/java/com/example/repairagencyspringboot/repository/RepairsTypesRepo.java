package com.example.repairagencyspringboot.repository;

import com.example.repairagencyspringboot.entity.RepairsTypes;
import com.example.repairagencyspringboot.entity.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RepairsTypesRepo extends CrudRepository<RepairsTypes, Long> {
    List<RepairsTypes> findAll();
    RepairsTypes findByTitle(String string);

}
