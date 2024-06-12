package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.dao.ProductVariantsValueDAO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductVariantsValueDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductVariantsValueServiceImpl implements IProductVariantsValueService {

    @Autowired
    ProductVariantsValueDAO productVariantsValueDAO;

    @Override
    public List<ProductVariantsValueDTO> getProductVariantsValuesByProductId(Long productId) {
        return productVariantsValueDAO.getProductVariantsValuesByProductId(productId);
    }

}
