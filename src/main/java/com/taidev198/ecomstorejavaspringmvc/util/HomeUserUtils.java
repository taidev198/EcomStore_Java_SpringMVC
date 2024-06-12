package com.taidev198.ecomstorejavaspringmvc.util;

import com.taidev198.ecomstorejavaspringmvc.dto.ProductAttributeValueDTO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductVariantsValueDTO;
import com.taidev198.ecomstorejavaspringmvc.entity.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class HomeUserUtils {


    public static void setProductVariantsValue(List<ProductVariantsValueDTO> productVariantsValueDTOList, Product product) {

        Map<String, List<ProductVariantsValueDTO>> productAttributeValuesByCategory = new HashMap<>();
        for (ProductVariantsValueDTO productVariantsValueDTO : productVariantsValueDTOList) {
            System.out.println(productVariantsValueDTO.getVariantsName());
            if (productAttributeValuesByCategory.isEmpty())
                productAttributeValuesByCategory.put(productVariantsValueDTO.getVariantsName(), new ArrayList<>());
            List<ProductVariantsValueDTO> rs = productAttributeValuesByCategory.get(productVariantsValueDTO.getVariantsName());
            if (rs == null ) {
                rs = new ArrayList<>();
            }
            rs.add(productVariantsValueDTO);
            productAttributeValuesByCategory.put(productVariantsValueDTO.getVariantsName(), rs);
        }
        product.setProductVariants(productAttributeValuesByCategory);
    }
}
