package com.example.repairagencyspringboot.entity;

import com.example.repairagencyspringboot.enums.Status;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Objects;

@Entity
@Table(name = "orders")
public class Orders extends BaseEntity {

    @Column(name = "date", columnDefinition = "DATE")
    private LocalDate date;

    @Column(name = "price")
    private double price;

    @ManyToOne
    @JoinColumn(name = "repairs_types_id", referencedColumnName = "id")
    private RepairsTypes repairsTypes;

    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;

    @Enumerated(value = EnumType.STRING)
    private Status status;

    public Orders() {
    }

    public Orders(LocalDate date, double price, RepairsTypes repairsTypes, User user, Status status) {
        this.date = date;
        this.price = price;
        this.repairsTypes = repairsTypes;
        this.user = user;
        this.status = status;
    }

    public Orders(Long id, LocalDate date, double price, RepairsTypes repairsTypes, User user, Status status) {
        super(id);
        this.date = date;
        this.price = price;
        this.repairsTypes = repairsTypes;
        this.user = user;
        this.status = status;
    }

    public Orders(LocalDate date, RepairsTypes repairsTypes, User user, Status status) {
        this.date = date;
        this.repairsTypes = repairsTypes;
        this.user = user;
        this.status = status;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public RepairsTypes getRepairsTypes() {
        return repairsTypes;
    }

    public void setRepairsTypes(RepairsTypes repairsTypes) {
        this.repairsTypes = repairsTypes;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Orders)) return false;
        if (!super.equals(o)) return false;
        Orders orders = (Orders) o;
        return Double.compare(orders.getPrice(), getPrice()) == 0 &&
                Objects.equals(getDate(), orders.getDate()) &&
                Objects.equals(getRepairsTypes(), orders.getRepairsTypes()) &&
                Objects.equals(getUser(), orders.getUser()) &&
                getStatus() == orders.getStatus();
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), getDate(), getPrice(), getRepairsTypes(), getUser(), getStatus());
    }

    @Override
    public String toString() {
        return "Order{" +
                "date=" + date +
                ", price=" + price +
                ", repairsTypes=" + repairsTypes +
                ", user=" + user +
                ", status=" + status +
                '}';
    }
}
