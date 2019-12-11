package com.example.repairagencyspringboot.dto;

import java.util.Objects;

public class FeedbackForm {
    private String message;


    public FeedbackForm() {
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof FeedbackForm)) return false;
        FeedbackForm that = (FeedbackForm) o;
        return Objects.equals(getMessage(), that.getMessage());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getMessage());
    }

    @Override
    public String toString() {
        return "FeedbackForm{" +
                "message='" + message + '\'' +
                '}';
    }
}
