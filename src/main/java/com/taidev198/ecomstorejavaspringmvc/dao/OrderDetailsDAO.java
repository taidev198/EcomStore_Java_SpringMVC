package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.entity.OrderDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class OrderDetailsDAO {

    @Autowired
    JdbcTemplate _jdbcTemplate;

    public List<OrderDetails> findAll() {
        return null;
    }

    public OrderDetails findById(Long id) {
        return null;
    }

    public OrderDetails save(OrderDetails orderDetails) {
        return null;
    }

    public OrderDetails update(OrderDetails orderDetails) {
        return null;
    }

    public void delete(OrderDetails orderDetails) {

    }
}
