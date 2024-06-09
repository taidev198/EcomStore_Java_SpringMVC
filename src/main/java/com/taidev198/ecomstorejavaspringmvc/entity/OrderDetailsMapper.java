package com.taidev198.ecomstorejavaspringmvc.entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderDetailsMapper implements RowMapper<OrderDetails> {


    @Override
    public OrderDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
        OrderDetails orderDetails = new OrderDetails();
        orderDetails.setId(rs.getInt("id"));
        orderDetails.setOrderId(rs.getInt("orderId"));
        orderDetails.setProductDetailsId(rs.getInt("productId"));
        orderDetails.setQuantity(rs.getInt("quantity"));


        return orderDetails;
    }
}
