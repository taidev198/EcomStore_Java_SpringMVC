package com.taidev198.ecomstorejavaspringmvc.entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class WishListMapper implements RowMapper<WishList> {

    @Override
    public WishList mapRow(ResultSet rs, int rowNum) throws SQLException {
        WishList wishList = new WishList();
        wishList.setId(rs.getInt("id"));
        wishList.setProductId(rs.getInt("productId"));
        return wishList;
    }
}
