package com.taidev198.ecomstorejavaspringmvc.dto;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductVariantsValueDTOMapper implements RowMapper<ProductVariantsValueDTO> {


    @Override
    public ProductVariantsValueDTO mapRow(ResultSet rs, int rowNum) throws SQLException {

        ProductVariantsValueDTO productVariantsValueDTO = new ProductVariantsValueDTO();
        productVariantsValueDTO.setProductId(rs.getInt("ProductId"));
        productVariantsValueDTO.setVariantsName(rs.getString("VariantsName"));
        productVariantsValueDTO.setVariantsValueName(rs.getString("VariantsValueName"));
        productVariantsValueDTO.setProductVariantsValuePrice(rs.getDouble("ProductVariantsValuePrice"));
        productVariantsValueDTO.setProductVariantsValueStock(rs.getInt("ProductVariantsValueStock"));
        productVariantsValueDTO.setVariantsValueName1(rs.getString("VariantsValueName1"));
        productVariantsValueDTO.setVariantsName1(rs.getString("VariantsName1"));
        productVariantsValueDTO.setProductVariantsValueID(rs.getInt("ProductVariantsValueID"));

        return productVariantsValueDTO;
    }
}
