package com.taidev198.ecomstorejavaspringmvc.entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CartMapper  implements RowMapper<Cart> {

    @Override
    public Cart mapRow(ResultSet rs, int rowNum) throws SQLException {
        Cart cart = new Cart();
        cart.setId(rs.getInt("id"));
        cart.setProductId(rs.getInt("productId"));
        cart.setUserId(rs.getInt("userId"));
        return cart;
    }
}
