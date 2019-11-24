package com.example.repairagencyspringboot.entity;

public interface EntityHasId {
    Long getId();

    void setId(Long id);

    boolean isNew();
}
