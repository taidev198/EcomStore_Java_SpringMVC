package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.dto.ProductCategoryTypeDTO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductCategoryTypeDTOMapper;
import com.taidev198.ecomstorejavaspringmvc.entity.Category;
import com.taidev198.ecomstorejavaspringmvc.entity.CategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryDAO {

    @Autowired
    public JdbcTemplate _jdbcTemplate;

    public List<ProductCategoryTypeDTO> getAllCategories() {
        List<ProductCategoryTypeDTO> categories;

        StringBuffer  varname1 = new StringBuffer();
        varname1.append("select pc.ProductCategoryID, pc.ProductCategoryName, ct.CategoryTypeID, ct.CategoryTypeName from ProductCategoryType as pct ");
        varname1.append("join ProductCategory as pc on pc.ProductCategoryID = pct.ProductCategoryID ");
        varname1.append("join CategoryType as ct on ct.CategoryTypeID = pct.CategoryTypeID;");
        categories = _jdbcTemplate.query(varname1.toString(), new ProductCategoryTypeDTOMapper());
        return categories;
    }

}
