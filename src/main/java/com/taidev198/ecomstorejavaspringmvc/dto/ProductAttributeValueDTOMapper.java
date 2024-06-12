package com.taidev198.ecomstorejavaspringmvc.dto;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductAttributeValueDTOMapper implements RowMapper<ProductAttributeValueDTO> {

    @Override
    public ProductAttributeValueDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
        ProductAttributeValueDTO productAttributeValueDTO = new ProductAttributeValueDTO();
        productAttributeValueDTO.setProductId(rs.getInt("ProductId"));
        productAttributeValueDTO.setAttributeName(rs.getString("AttributeName"));
        productAttributeValueDTO.setAttributeValueName(rs.getString("AttributeValueName"));
        return productAttributeValueDTO;
    }
}
