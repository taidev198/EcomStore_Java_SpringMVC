package com.taidev198.ecomstorejavaspringmvc.dto;

public class ProductVariantsValueDTO {

    private int productId;
    private String variantsName;
    private String variantsValueName;
    private double productVariantsValuePrice;
    private int productVariantsValueStock;

    public int getProductId() {
        return productId;
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
