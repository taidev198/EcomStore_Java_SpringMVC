package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.entity.Discount;

import java.util.List;

public interface IDiscountService {

    List<Discount> getDiscountByUserId(int userId);
    Discount getDiscountById(int discountId);
    Discount addDiscount(Discount discount);
    Discount updateDiscount(Discount discount);
    void deleteDiscount(int discountId);
}
