package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.entity.Cart;

import java.util.List;

public interface ICartService {

    List<Cart> getCarts();
    Cart addCart(Cart cart);
    Cart updateCart(Cart cart);
    Cart deleteCart(Cart cart);
    Cart getCartById(int id);

}
