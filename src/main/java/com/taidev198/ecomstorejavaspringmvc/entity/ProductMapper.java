package com.taidev198.ecomstorejavaspringmvc.entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<Product> {


    @Override
    public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
        Product user = new Product();
        user.setId(rs.getInt("id"));
        user.setFullname(rs.getString("fullname"));
        user.setUsername(rs.getString("username"));
        user.setPassword(rs.getString("password"));
        user.setEmail(rs.getString("email"));
        user.setAddress(rs.getString("address"));
        user.setNumber(rs.getString("number"));
        user.setRoleId(rs.getInt("roleId"));
        user.setStatusId(rs.getInt("statusId"));
        return user;
    }
}
