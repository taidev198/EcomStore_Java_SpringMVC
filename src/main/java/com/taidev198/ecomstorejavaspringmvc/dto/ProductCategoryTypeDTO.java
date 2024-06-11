package com.taidev198.ecomstorejavaspringmvc.dto;

public class ProductCategoryTypeDTO {

    private int ProductCategoryID;
    private String ProductCategoryName;
    private int CategoryTypeID;
    private String CategoryTypeName;

    public int getCategoryTypeID() {
        return CategoryTypeID;
    }

    public void setCategoryTypeID(int categoryTypeID) {
        CategoryTypeID = categoryTypeID;
    }

    public String getCategoryTypeName() {
        return CategoryTypeName;
    }

    public void setCategoryTypeName(String categoryTypeName) {
        CategoryTypeName = categoryTypeName;
    }

    public int getProductCategoryID() {
        return ProductCategoryID;
    }

    public void setProductCategoryID(int productCategoryID) {
        ProductCategoryID = productCategoryID;
    }

    public String getProductCategoryName() {
        return ProductCategoryName;
    }

    public void setProductCategoryName(String productCategoryName) {
        ProductCategoryName = productCategoryName;
    }
}
