package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.dto.ProductAttributeValueDTO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductAttributeValueDTOMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductAttributeValueDAO {

    @Autowired
    JdbcTemplate _jdbcTemplate;

    public List<ProductAttributeValueDTO> getProductAttributeValueByProductId(Long productId) {

        StringBuffer  varname1 = new StringBuffer();
        varname1.append("select ps.ProductId, a.AttributeName, av.AttributeValueName ");
        varname1.append("from product_shop as ps ");
        varname1.append("join ProductAttributeValue as pav on pav.ProductId = ps.ProductId and ps.ProductId = ").append(productId);
        varname1.append(" join AttributeValue as av on av.AttributeValueID = pav.AttributeValueID ");
        varname1.append("join Attribute as a on a.AttributeID = av.AttributeID ");
        varname1.append("order by a.AttributeName;");
        return _jdbcTemplate.query(varname1.toString(), new ProductAttributeValueDTOMapper());
    }

    public List<ProductAttributeValueDTO> getAllProductAttributeValue() {
        StringBuffer  varname1 = new StringBuffer();
        varname1.append("select ps.ProductId, a.AttributeName, av.AttributeValueName ");
        varname1.append("from product_shop as ps ");
        varname1.append("join ProductAttributeValue as pav on pav.ProductId = ps.ProductId ");
        varname1.append("join AttributeValue as av on av.AttributeValueID = pav.AttributeValueID ");
        varname1.append("join Attribute as a on a.AttributeID = av.AttributeID ");
        varname1.append("order by a.AttributeName;");
        return _jdbcTemplate.query(varname1.toString(), new ProductAttributeValueDTOMapper());
    }
}
