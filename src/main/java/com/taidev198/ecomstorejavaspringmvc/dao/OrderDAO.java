package com.taidev198.ecomstorejavaspringmvc.dao;


import com.taidev198.ecomstorejavaspringmvc.entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class OrderDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    public List<Order> getAllOrders() {
        return null;
    }

    public List<Order> findAllOrders() {
        return null;
    }

    public Order findOrderById(Long id) {
        return null;
    }

    public Order saveOrder(Order order) {
        return null;
    }

    public Order updateOrder(Order order) {
        return null;
    }

    public void deleteOrder(Long id) {

    }
}
