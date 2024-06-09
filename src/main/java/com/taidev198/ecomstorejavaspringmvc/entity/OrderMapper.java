package com.taidev198.ecomstorejavaspringmvc.entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderMapper implements RowMapper<Order> {


    @Override
    public Order mapRow(ResultSet rs, int rowNum) throws SQLException {

        Order order = new Order();
        order.setId(rs.getInt("id"));
        order.setUserId(rs.getInt("userId"));
        order.setOderDetailsId(rs.getInt("orderdetailsId"));
        order.setOrderDate(rs.getTimestamp("orderDate"));
        return order;
    }
}
