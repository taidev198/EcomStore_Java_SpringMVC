package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.dao.CategoryDAO;
import com.taidev198.ecomstorejavaspringmvc.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements ICategoryService{

    @Autowired
    CategoryDAO categoryDAO;

    @Override
    public List<Category> getAllCategories() {
        return categoryDAO.getAllCategories();
    }
}
