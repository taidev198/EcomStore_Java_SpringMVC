package com.taidev198.ecomstorejavaspringmvc.entity;

import java.sql.Timestamp;

public class Product {

    private int ProductId;
    private String ProductName;
    private String ProductContent;
    private String ProductDescription;
    private int ProductCategoryID;
    private String ProductModel;

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
