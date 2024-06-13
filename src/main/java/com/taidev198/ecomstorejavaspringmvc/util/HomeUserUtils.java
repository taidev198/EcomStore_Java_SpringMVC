package com.taidev198.ecomstorejavaspringmvc.util;

import com.taidev198.ecomstorejavaspringmvc.dto.ProductAttributeValueDTO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductVariantsValueDTO;
import com.taidev198.ecomstorejavaspringmvc.entity.Product;

import java.util.*;

public class HomeUserUtils {


    public static void setProductVariantsValue(List<ProductVariantsValueDTO> productVariantsValueDTOList, Product product) {

        Map<String, HashSet<String>> productAttributeValuesByCategory = new HashMap<>();
        for (ProductVariantsValueDTO productVariantsValueDTO : productVariantsValueDTOList) {
            System.out.println(productVariantsValueDTO.getVariantsName());
            if (productAttributeValuesByCategory.isEmpty()){
                productAttributeValuesByCategory.put(productVariantsValueDTO.getVariantsName(), new HashSet<>());
                productAttributeValuesByCategory.put(productVariantsValueDTO.getVariantsName1(), new HashSet<>());
            }
            HashSet<String> rs = productAttributeValuesByCategory.get(productVariantsValueDTO.getVariantsName());
            HashSet<String> rs1 = productAttributeValuesByCategory.get(productVariantsValueDTO.getVariantsName1());
            if (rs == null ) {
                rs = new HashSet<>();
                rs1 = new HashSet<>();
            }
            rs.add(productVariantsValueDTO.getVariantsValueName());
            rs1.add(productVariantsValueDTO.getVariantsValueName1());
            productAttributeValuesByCategory.put(productVariantsValueDTO.getVariantsName(), rs);
            productAttributeValuesByCategory.put(productVariantsValueDTO.getVariantsName1(), rs1);
        }
        product.setProductVariants(productAttributeValuesByCategory);
    }
}
