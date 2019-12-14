package com.example.repairagencyspringboot.model;

import com.example.repairagencyspringboot.model.enums.Status;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Objects;

@Entity
@Table(name = "orders")
public class Order extends BaseEntity {

    @Column(name = "date", columnDefinition = "DATE")
    private LocalDate date;

    @Column(name = "price")
    private double price;

    @ManyToOne
    @JoinColumn(name = "repair_type_id", referencedColumnName = "id")
    private RepairType repairType;

    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;

    @Enumerated(value = EnumType.STRING)
    private Status status;

    public Order() {
    }

    public Order(LocalDate date, double price, RepairType repairType, User user, Status status) {
        this.date = date;
        this.price = price;
        this.repairType = repairType;
        this.user = user;
        this.status = status;
    }

    public Order(Long id, LocalDate date, double price, RepairType repairType, User user, Status status) {
        super(id);
        this.date = date;
        this.price = price;
        this.repairType = repairType;
        this.user = user;
        this.status = status;
    }

    public Order(LocalDate date, RepairType repairType, User user, Status status) {
        this.date = date;
        this.repairType = repairType;
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

    public RepairType getRepairType() {
        return repairType;
    }

    public void setRepairType(RepairType repairType) {
        this.repairType = repairType;
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
        if (!(o instanceof Order)) return false;
        if (!super.equals(o)) return false;
        Order order = (Order) o;
        return Double.compare(order.getPrice(), getPrice()) == 0 &&
                Objects.equals(getDate(), order.getDate()) &&
                Objects.equals(getRepairType(), order.getRepairType()) &&
                Objects.equals(getUser(), order.getUser()) &&
                getStatus() == order.getStatus();
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), getDate(), getPrice(), getRepairType(), getUser(), getStatus());
    }

    @Override
    public String toString() {
        return "Order{" +
                "date=" + date +
                ", price=" + price +
                ", repairsTypes=" + repairType +
                ", user=" + user +
                ", status=" + status +
                '}';
    }
}
