package com.taidev198.ecomstorejavaspringmvc.entity;

import com.taidev198.ecomstorejavaspringmvc.dto.ProductAttributeValueDTO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductVariantsValueDTO;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Product {

    private int ProductId;
    private String ProductName;
    private String ProductContent;
    private String ProductDescription;
    private int ProductCategoryID;
    private String ProductModel;
    private List<ProductAttributeValueDTO> productAttributeValues = new ArrayList<>();
    private Map<String, List<ProductVariantsValueDTO>> productVariants = new HashMap<>();

    public Map<String, List<ProductVariantsValueDTO>> getProductVariants() {
        return productVariants;
    }

    public void setProductVariants(Map<String, List<ProductVariantsValueDTO>> productVariants) {
        this.productVariants = productVariants;
    }

    public List<ProductAttributeValueDTO> getProductAttributeValues() {
        return productAttributeValues;
    }

    public void setProductAttributeValues(List<ProductAttributeValueDTO> productAttributeValues) {
        this.productAttributeValues = productAttributeValues;
    }

    public int getProductCategoryID() {
        return ProductCategoryID;
    }

    public void setProductCategoryID(int productCategoryID) {
        ProductCategoryID = productCategoryID;
    }

    public String getProductContent() {
        return ProductContent;
    }

    public void setProductContent(String productContent) {
        ProductContent = productContent;
    }

    public String getProductDescription() {
        return ProductDescription;
    }

    public void setProductDescription(String productDescription) {
        ProductDescription = productDescription;
    }

    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int productId) {
        ProductId = productId;
    }

    public String getProductModel() {
        return ProductModel;
    }

    public void setProductModel(String productModel) {
        ProductModel = productModel;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String productName) {
        ProductName = productName;
    }
}
