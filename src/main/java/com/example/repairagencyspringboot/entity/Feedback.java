package com.example.repairagencyspringboot.entity;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Objects;

@Entity
@Table(name = "feedback")
public class Feedback extends BaseEntity {

    @Column(name = "date", columnDefinition = "DATE")
    private LocalDate date;
    @Column(name = "feedback")
    private String text;

    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;

    public Feedback() {
    }

    public Feedback(String text, LocalDate date, User user) {
        this.text = text;
        this.date = date;
        this.user = user;
    }

    public Feedback(Long id, String text, LocalDate date, User user) {
        super(id);
        this.text = text;
        this.date = date;
        this.user = user;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Feedback)) return false;
        if (!super.equals(o)) return false;
        Feedback feedback = (Feedback) o;
        return Objects.equals(getDate(), feedback.getDate()) &&
                Objects.equals(getText(), feedback.getText()) &&
                Objects.equals(getUser(), feedback.getUser());
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), getDate(), getText(), getUser());
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "date=" + date +
                ", text='" + text + '\'' +
                ", user=" + user +
                '}';
    }
}
