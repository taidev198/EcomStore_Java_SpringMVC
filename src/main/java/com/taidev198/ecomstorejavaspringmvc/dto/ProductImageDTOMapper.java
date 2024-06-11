package com.taidev198.ecomstorejavaspringmvc.dto;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductImageDTOMapper implements RowMapper<ProductImageDTO> {

    @Override
    public ProductImageDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
        ProductImageDTO productImageDTO = new ProductImageDTO();
        productImageDTO.setProductId(rs.getInt("ProductId"));
        productImageDTO.setImageUrl(rs.getString("imageUrl"));
        return productImageDTO;
    }
}
