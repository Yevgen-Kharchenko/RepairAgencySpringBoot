package com.example.repairagencyspringboot.dto;

import javax.validation.constraints.NotNull;
import java.util.Objects;

public class CommentForm {
    @NotNull
    private String message;
    @NotNull
    private String orderId;


    public CommentForm() {
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof CommentForm)) return false;
        CommentForm that = (CommentForm) o;
        return getMessage().equals(that.getMessage()) &&
                getOrderId().equals(that.getOrderId());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getMessage(), getOrderId());
    }

    @Override
    public String toString() {
        return "CommentForm{" +
                "message='" + message + '\'' +
                ", orderId='" + orderId + '\'' +
                '}';
    }
}
