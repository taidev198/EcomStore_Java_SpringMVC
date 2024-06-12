package com.taidev198.ecomstorejavaspringmvc.dto;

public class CategoryBrandDTO {

    private int numberProductsOfBrand;
    private String attributeValueName;

    public String getAttributeValueName() {
        return attributeValueName;
    }

    public void setAttributeValueName(String attributeValueName) {
        this.attributeValueName = attributeValueName;
    }

    public int getNumberProductsOfBrand() {
        return numberProductsOfBrand;
    }

    public void setNumberProductsOfBrand(int numberProductsOfBrand) {
        this.numberProductsOfBrand = numberProductsOfBrand;
    }
}
