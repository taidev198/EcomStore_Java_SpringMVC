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
        varname1.append("select ps.ProductId,pvv.ProductVariantsValueID, v.VariantsName, av.VariantsValueName, ");
        varname1.append(" v1.VariantsName as VariantsName1, av1.VariantsValueName as VariantsValueName1, pvv.ProductVariantsValuePrice, ");
        varname1.append(" pvv.ProductVariantsValueStock ");
        varname1.append("from Variants as v ");
        varname1.append("join VariantsValue as av on v.VariantsID = av.VariantsID ");
        varname1.append("join ProductVariantsValue as pvv on pvv.VariantsValue1ID = av.VariantsValueID ");
        varname1.append("join Product_shop as ps on ps.ProductId = pvv.ProductId and ps.ProductId= ");
        varname1.append(productId);
        varname1.append(" join VariantsValue as av1 on pvv.VariantsValue2ID = av1.VariantsValueID ");
        varname1.append("join Variants as v1 on v1.VariantsID = av1.VariantsID;");

        return _jdbcTemplate.query(varname1.toString(), new ProductVariantsValueDTOMapper());
    }
}
