package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.dto.ProductCategoryTypeDTO;
import com.taidev198.ecomstorejavaspringmvc.entity.Category;

import java.util.List;

public interface ICategoryService {

    List<ProductCategoryTypeDTO> getAllCategories();
}
