package com.taidev198.ecomstorejavaspringmvc.entity;

import java.util.List;

public class ItemCheckBox {

    Integer[] listUserId;
    String[] listBrandName;

    public String[] getListBrandName() {
        return listBrandName;
    }

    public void setListBrandName(String[] listBrandName) {
        this.listBrandName = listBrandName;
    }

    public Integer[] getListUserId() {
        return listUserId;
    }

    public void setListUserId(Integer[] listUserId) {
        this.listUserId = listUserId;
    }
}
