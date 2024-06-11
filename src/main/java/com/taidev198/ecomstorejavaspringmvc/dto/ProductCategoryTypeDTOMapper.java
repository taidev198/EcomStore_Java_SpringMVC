package com.taidev198.ecomstorejavaspringmvc.dto;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductCategoryTypeDTOMapper implements RowMapper<ProductCategoryTypeDTO> {

    @Override
    public ProductCategoryTypeDTO mapRow(ResultSet rs, int rowNum) throws SQLException {

        ProductCategoryTypeDTO productCategoryTypeDTO = new ProductCategoryTypeDTO();
        productCategoryTypeDTO.setProductCategoryID(rs.getInt("ProductCategoryID"));
        productCategoryTypeDTO.setProductCategoryName(rs.getString("ProductCategoryName"));
        productCategoryTypeDTO.setCategoryTypeID(rs.getInt("CategoryTypeID"));
        productCategoryTypeDTO.setCategoryTypeName(rs.getString("CategoryTypeName"));

        return productCategoryTypeDTO;
    }
}