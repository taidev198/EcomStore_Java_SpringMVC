package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.entity.Discount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DiscountDAO {

    @Autowired
    private JdbcTemplate _jdbcTemplate;

    public List<Discount> getDiscountByUserId(int userId) {
        return null;
    }

    public Discount getDiscountById(int discountId) {
        return null;
    }

    public Discount addDiscount(Discount discount) {
        return null;
    }

    public Discount updateDiscount(Discount discount) {
        return null;
    }

    public void deleteDiscount(int discountId) {

    }
}
