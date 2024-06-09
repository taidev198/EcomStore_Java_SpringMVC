package com.taidev198.ecomstorejavaspringmvc.service.user;


import com.taidev198.ecomstorejavaspringmvc.dao.CartDAO;
import com.taidev198.ecomstorejavaspringmvc.entity.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements ICartService{

    @Autowired
    CartDAO cartDAO;


    @Override
    public List<Cart> getCarts() {
        return cartDAO.getCarts();
    }

    @Override
    public Cart addCart(Cart cart) {
        return cartDAO.addCart();
    }

    @Override
    public Cart updateCart(Cart cart) {
        return cartDAO.updateCart();
    }

    @Override
    public Cart deleteCart(Cart cart) {
        return cartDAO.deleteCart();
    }

    @Override
    public Cart getCartById(int id) {
        return cartDAO.getCartById();
    }
}
