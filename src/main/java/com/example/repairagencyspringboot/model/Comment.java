package com.example.repairagencyspringboot.model;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Objects;

@Entity
@Table(name = "comments")
public class Comment extends BaseEntity {

    @Column(name = "date", columnDefinition = "DATE")
    private LocalDate date;

    @Column(name = "comment")
    private String comment;

    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "order_id", referencedColumnName = "id")
    private Order order;

    public Comment() {
    }

    public Comment(LocalDate date, String comment, User user, Order order) {
        this.date = date;
        this.comment = comment;
        this.user = user;
        this.order = order;
    }

    public Comment(Long id, LocalDate date, String comment, User user, Order order) {
        super(id);
        this.date = date;
        this.comment = comment;
        this.user = user;
        this.order = order;
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

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Comment)) return false;
        if (!super.equals(o)) return false;
        Comment comment = (Comment) o;
        return getDate().equals(comment.getDate()) &&
                getComment().equals(comment.getComment()) &&
                getUser().equals(comment.getUser()) &&
                getOrder().equals(comment.getOrder());
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), getDate(), getComment(), getUser(), getOrder());
    }

    @Override
    public String toString() {
        return "Comments{" +
                "date=" + date +
                ", comment='" + comment + '\'' +
                ", user=" + user +
                ", order=" + order +
                '}';
    }
}
