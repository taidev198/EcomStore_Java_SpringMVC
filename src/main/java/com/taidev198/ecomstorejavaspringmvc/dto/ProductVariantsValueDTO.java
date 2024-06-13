package com.taidev198.ecomstorejavaspringmvc.dto;

public class ProductVariantsValueDTO {

    private int productId;
    private String variantsName;
    private String variantsValueName;
    private double productVariantsValuePrice;
    private int productVariantsValueStock;
    private int VariantsValue2ID;
    private String variantsValueName1;
    private int ProductVariantsValueID;

    public String getVariantsValueName1() {
        return variantsValueName1;
    }

    public void setVariantsValueName1(String variantsValueName1) {
        this.variantsValueName1 = variantsValueName1;
    }

    public int getProductVariantsValueID() {
        return ProductVariantsValueID;
    }

    public void setProductVariantsValueID(int productVariantsValueID) {
        ProductVariantsValueID = productVariantsValueID;
    }

    public int getProductId() {
        return productId;
    }

    public int getVariantsValue2ID() {
        return VariantsValue2ID;
    }

    public void setVariantsValue2ID(int variantsValue2ID) {
        VariantsValue2ID = variantsValue2ID;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public double getProductVariantsValuePrice() {
        return productVariantsValuePrice;
    }

    public void setProductVariantsValuePrice(double productVariantsValuePrice) {
        this.productVariantsValuePrice = productVariantsValuePrice;
    }

    public int getProductVariantsValueStock() {
        return productVariantsValueStock;
    }

    public void setProductVariantsValueStock(int productVariantsValueStock) {
        this.productVariantsValueStock = productVariantsValueStock;
    }

    public String getVariantsName() {
        return variantsName;
    }

    public void setVariantsName(String variantsName) {
        this.variantsName = variantsName;
    }

    public String getVariantsValueName() {
        return variantsValueName;
    }

    public void setVariantsValueName(String variantsValueName) {
        this.variantsValueName = variantsValueName;
    }
}
