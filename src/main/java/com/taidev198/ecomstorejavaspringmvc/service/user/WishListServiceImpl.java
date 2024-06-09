package com.taidev198.ecomstorejavaspringmvc.service.user;


import com.taidev198.ecomstorejavaspringmvc.dao.WishListDAO;
import com.taidev198.ecomstorejavaspringmvc.entity.WishList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WishListServiceImpl implements IWishListService{

    @Autowired
    WishListDAO wishListDAO;


    @Override
    public List<WishList> getAllWishList() {
        return wishListDAO.getAllWishList();
    }

    @Override
    public WishList getWishListProductId(int id) {
        return wishListDAO.getWishListProductId(id);
    }
}
