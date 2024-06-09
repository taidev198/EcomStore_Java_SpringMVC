package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.dao.DiscountDAO;
import com.taidev198.ecomstorejavaspringmvc.entity.Discount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DiscountServiceImpl implements IDiscountService{

    @Autowired
    DiscountDAO discountDAO;

    @Override
    public List<Discount> getDiscountByUserId(int userId) {
        return discountDAO.getDiscountByUserId(userId);
    }

    @Override
    public Discount getDiscountById(int discountId) {
        return discountDAO.getDiscountById(discountId);
    }

    @Override
    public Discount addDiscount(Discount discount) {
        return discountDAO.addDiscount(discount);
    }

    @Override
    public Discount updateDiscount(Discount discount) {
        return discountDAO.updateDiscount(discount);
    }

    @Override
    public void deleteDiscount(int discountId) {
        discountDAO.deleteDiscount(discountId);
    }
}
