package com.taidev198.ecomstorejavaspringmvc.dao;


import com.taidev198.ecomstorejavaspringmvc.dto.ProductAttributeValueDTOMapper;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductVariantsValueDTO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductVariantsValueDTOMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductVariantsValueDAO {

    @Autowired
    private JdbcTemplate _jdbcTemplate;

    public List<ProductVariantsValueDTO> getProductVariantsValuesByProductId(Long productId) {
        StringBuffer  varname1 = new StringBuffer();
        varname1.append("select ps.ProductId, v.VariantsName, av.VariantsValueName, pvv.ProductVariantsValuePrice, pvv.ProductVariantsValueStock ");
        varname1.append("from Variants as v ");
        varname1.append("join VariantsValue as av on v.VariantsID = av.VariantsID ");
        varname1.append("join ProductVariantsValue as pvv on pvv.VariantsValueID = av.VariantsValueID ");
        varname1.append("join Product_shop as ps on ps.ProductId = pvv.ProductId and ps.ProductId= ");
        varname1.append(productId);
        varname1.append(" ;");

        return _jdbcTemplate.query(varname1.toString(), new ProductVariantsValueDTOMapper());
    }
}
