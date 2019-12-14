package com.example.repairagencyspringboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Objects;

@Entity
@Table(name = "repairs_types")
public class RepairsTypes extends BaseEntity {

    @Column(name = "title")
    private String title;

    public RepairsTypes() {
    }

    public RepairsTypes(String title) {
        this.title = title;
    }

    public RepairsTypes(Long id, String title) {
        super(id);
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof RepairsTypes)) return false;
        if (!super.equals(o)) return false;
        RepairsTypes that = (RepairsTypes) o;
        return Objects.equals(getTitle(), that.getTitle());
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), getTitle());
    }

    @Override
    public String toString() {
        return title;
    }
}
