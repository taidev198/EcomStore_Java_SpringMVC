package com.taidev198.ecomstorejavaspringmvc.entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<Product> {


    @Override
    public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
        Product product = new Product();
        product.setProductId(rs.getInt("ProductId"));
        product.setProductName(rs.getString("ProductName"));
        product.setProductModel(rs.getString("ProductModel"));
        product.setProductContent(rs.getString("ProductContent"));
        product.setProductDescription(rs.getString("ProductDescription"));
        product.setProductCategoryID(rs.getInt("ProductCategoryID"));
        return product;
    }
}
