package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.entity.Category;
import com.taidev198.ecomstorejavaspringmvc.entity.CategoryMapper;
import com.taidev198.ecomstorejavaspringmvc.entity.MapperSlide;
import com.taidev198.ecomstorejavaspringmvc.entity.Slide;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryDAO {

    @Autowired
    public JdbcTemplate _jdbcTemplate;

    public List<Category> getAllCategories() {
        List<Category> categories;
        categories = _jdbcTemplate.query("select * from category_ecom ;", new CategoryMapper());
        return categories;
    }

}
