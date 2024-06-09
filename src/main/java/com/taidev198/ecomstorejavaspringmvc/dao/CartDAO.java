package com.taidev198.ecomstorejavaspringmvc.dao;


import com.taidev198.ecomstorejavaspringmvc.entity.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CartDAO {

    @Autowired
    private JdbcTemplate _jdbcTemplate;


    public List<Cart> getCarts() {
        return null;
    }

    public Cart addCart() {
        return null;
    }

    public Cart updateCart() {
        return null;
    }

    public Cart deleteCart() {
        return null;
    }

    public Cart getCartById() {
        return null;
    }
}
