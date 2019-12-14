package com.example.repairagencyspringboot.controller.dto;

import java.util.Objects;

public class OrderForm {
    private String message;
    private String repairTypeName;

    public OrderForm() {
    }

    public String getRepairTypeName() {
        return repairTypeName;
    }

    public void setRepairTypeName(String repairTypeName) {
        this.repairTypeName = repairTypeName;
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
        if (!(o instanceof OrderForm)) return false;
        OrderForm orderForm = (OrderForm) o;
        return getMessage().equals(orderForm.getMessage()) &&
                getRepairTypeName().equals(orderForm.getRepairTypeName());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getMessage(), getRepairTypeName());
    }

    @Override
    public String toString() {
        return "OrderForm{" +
                "message='" + message + '\'' +
                ", repairTypeId='" + repairTypeName + '\'' +
                '}';
    }
}
