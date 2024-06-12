package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.dao.ProductAttributeValueDAO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductAttributeValueDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductAttributeValueServiceImpl implements IProductAttributeValueService {

    @Autowired
    ProductAttributeValueDAO productAttributeValueDAO;

    @Override
    public List<ProductAttributeValueDTO> getProductAttributeValueByProductId(Long productId) {
        return productAttributeValueDAO.getProductAttributeValueByProductId(productId);
    }

    @Override
    public List<ProductAttributeValueDTO> getAllProductAttributeValue() {
        return productAttributeValueDAO.getAllProductAttributeValue();
    }
}
