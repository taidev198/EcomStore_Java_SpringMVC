package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.dto.ProductAttributeValueDTO;

import java.util.List;

public interface IProductAttributeValueService {

    List<ProductAttributeValueDTO> getProductAttributeValueByProductId(Long productId);

    List<ProductAttributeValueDTO> getAllProductAttributeValue();
}
