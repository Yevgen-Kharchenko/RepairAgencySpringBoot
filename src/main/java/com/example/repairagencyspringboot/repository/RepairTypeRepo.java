package com.example.repairagencyspringboot.repository;

import com.example.repairagencyspringboot.model.RepairType;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RepairTypeRepo extends CrudRepository<RepairType, Long> {

    List<RepairType> findAll();

    RepairType findByTitle(String string);
}
