package com.taidev198.ecomstorejavaspringmvc.entity;

import java.sql.Timestamp;

public class Order {

    private int id;
    private int userId;
    private int oderDetailsId;
    private Timestamp orderDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Timestamp getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
    }

    public int getOderDetailsId() {
        return oderDetailsId;
    }

    public void setOderDetailsId(int oderDetailsId) {
        this.oderDetailsId = oderDetailsId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
