package com.taidev198.ecomstorejavaspringmvc.entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class DiscountMapper implements RowMapper<Discount> {

    @Override
    public Discount mapRow(ResultSet rs, int rowNum) throws SQLException {
        Discount discount = new Discount();
        discount.setId(rs.getInt("id"));
        discount.setQuantity(rs.getInt("quantity"));
        discount.setPrice(rs.getDouble("price"));
        discount.setStartDate(rs.getTimestamp("start_date"));
        discount.setEndDate(rs.getTimestamp("end_date"));
        discount.setVariantId(rs.getInt("variantId"));
        return discount;
    }
}
