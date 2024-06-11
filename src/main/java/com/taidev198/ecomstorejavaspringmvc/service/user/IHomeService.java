package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.dto.ProductCategoryTypeDTO;
import com.taidev198.ecomstorejavaspringmvc.entity.Category;
import com.taidev198.ecomstorejavaspringmvc.entity.Slide;

import java.util.List;

public interface IHomeService {

    List<Slide> getSlides();

    List<ProductCategoryTypeDTO> getCategories();
}
