package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.dao.ProductVariantsValueDAO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductVariantsValueDTO;

import java.util.List;

public interface IProductVariantsValueService {

    List<ProductVariantsValueDTO> getProductVariantsValuesByProductId(Long productId);
}
