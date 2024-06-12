package com.taidev198.ecomstorejavaspringmvc.dto;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryBrandDTOMapper implements RowMapper<CategoryBrandDTO> {

    @Override
    public CategoryBrandDTO mapRow(ResultSet rs, int rowNum) throws SQLException {

        CategoryBrandDTO categoryBrandDTO = new CategoryBrandDTO();
        categoryBrandDTO.setNumberProductsOfBrand(rs.getInt("NumberProductsOfBrand"));
        categoryBrandDTO.setAttributeValueName(rs.getString("AttributeValueName"));
        return categoryBrandDTO;
    }
}
