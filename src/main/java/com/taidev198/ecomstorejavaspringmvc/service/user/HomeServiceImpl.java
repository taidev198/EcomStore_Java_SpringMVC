package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.dao.CategoryDAO;
import com.taidev198.ecomstorejavaspringmvc.dao.SlideDAO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductCategoryTypeDTO;
import com.taidev198.ecomstorejavaspringmvc.entity.Category;
import com.taidev198.ecomstorejavaspringmvc.entity.Slide;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HomeServiceImpl implements IHomeService{

    @Autowired
    private SlideDAO slideDAO;

    @Autowired
    private CategoryDAO categoryDAO;

    @Override
    public List<Slide> getSlides() {
        return slideDAO.getSlides();
    }

    @Override
    public List<ProductCategoryTypeDTO> getCategories() {
        return categoryDAO.getAllCategories();
    }
}
