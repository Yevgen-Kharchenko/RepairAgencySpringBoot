package com.example.repairagencyspringboot.model;

public interface EntityHasId {
    Long getId();

    void setId(Long id);

    boolean isNew();
}
