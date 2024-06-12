package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.dto.CategoryBrandDTO;
import com.taidev198.ecomstorejavaspringmvc.dto.CategoryBrandDTOMapper;
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

    public List<CategoryBrandDTO> getAllCategoriesBrands() {
        List<CategoryBrandDTO> categories;
        StringBuffer  varname1 = new StringBuffer();
        varname1.append("select count(ps.ProductId) as NumberProductsOfBrand, av.AttributeValueName from ");
        varname1.append(" ProductAttributeValue as pav ");
        varname1.append("join Product_shop as ps on pav.ProductId = ps.ProductId ");
        varname1.append("join AttributeValue as av on pav.AttributeValueID = av.AttributeValueID ");
        varname1.append("join Attribute as a on a.AttributeID = av.AttributeID and a.AttributeName = 'Brand' ");
        varname1.append("group by av.AttributeValueName ");
        varname1.append(";");

        return _jdbcTemplate.query(varname1.toString(), new CategoryBrandDTOMapper());
    }

}
