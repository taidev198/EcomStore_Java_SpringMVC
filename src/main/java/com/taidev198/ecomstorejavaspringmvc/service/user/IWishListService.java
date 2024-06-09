package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.entity.WishList;

import java.util.List;

public interface IWishListService {

    List<WishList> getAllWishList();
    WishList getWishListProductId(int id);
}
