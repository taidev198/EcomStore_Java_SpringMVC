package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.entity.WishList;
import com.taidev198.ecomstorejavaspringmvc.entity.WishListMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class WishListDAO {

    @Autowired
    private JdbcTemplate _jdbcTemplate;

    public WishList getWishListProductId(int id) {
        String sql = "select * from WishList where id = " +id;

        return _jdbcTemplate.query(sql, new WishListMapper()).get(0);
    }

    public List<WishList> getAllWishList() {

        String sql = "select * from wishlist_ecom ;";

        return _jdbcTemplate.query(sql, new WishListMapper());
    }
}
