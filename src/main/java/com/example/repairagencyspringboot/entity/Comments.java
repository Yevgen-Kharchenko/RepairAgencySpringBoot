package com.example.repairagencyspringboot.entity;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Objects;

@Entity
@Table(name = "comments")
public class Comments extends BaseEntity {

    @Column(name = "date", columnDefinition = "DATE")
    private LocalDate date;

    @Column(name = "comment")
    private String comment;

    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "orders_id", referencedColumnName = "id")
    private Orders orders;

    public Comments() {
    }

    public Comments(LocalDate date, String comment, User user, Orders orders) {
        this.date = date;
        this.comment = comment;
        this.user = user;
        this.orders = orders;
    }

    public Comments(Long id, LocalDate date, String comment, User user, Orders orders) {
        super(id);
        this.date = date;
        this.comment = comment;
        this.user = user;
        this.orders = orders;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Comments)) return false;
        if (!super.equals(o)) return false;
        Comments comments = (Comments) o;
        return getDate().equals(comments.getDate()) &&
                getComment().equals(comments.getComment()) &&
                getUser().equals(comments.getUser()) &&
                getOrders().equals(comments.getOrders());
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), getDate(), getComment(), getUser(), getOrders());
    }

    @Override
    public String toString() {
        return "Comments{" +
                "date=" + date +
                ", comment='" + comment + '\'' +
                ", user=" + user +
                ", order=" + orders +
                '}';
    }
}
