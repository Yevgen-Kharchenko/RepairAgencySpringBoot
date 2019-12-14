package com.example.repairagencyspringboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Objects;

@Entity
@Table(name = "repair_types")
public class RepairType extends BaseEntity {

    @Column(name = "title")
    private String title;

    public RepairType() {
    }

    public RepairType(String title) {
        this.title = title;
    }

    public RepairType(Long id, String title) {
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
        if (!(o instanceof RepairType)) return false;
        if (!super.equals(o)) return false;
        RepairType that = (RepairType) o;
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
