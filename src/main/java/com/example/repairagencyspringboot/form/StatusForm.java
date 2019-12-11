package com.example.repairagencyspringboot.form;

import javax.validation.constraints.NotNull;
import java.util.Objects;

public class StatusForm {
    @NotNull
    private String status;
    @NotNull
    private String orderId;
    private String price;


    public StatusForm() {
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof StatusForm)) return false;
        StatusForm that = (StatusForm) o;
        return getStatus().equals(that.getStatus()) &&
                getOrderId().equals(that.getOrderId()) &&
                getPrice().equals(that.getPrice());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getStatus(), getOrderId(), getPrice());
    }

    @Override
    public String toString() {
        return "StatusForm{" +
                "status='" + status + '\'' +
                ", orderId='" + orderId + '\'' +
                ", price='" + price + '\'' +
                '}';
    }
}
