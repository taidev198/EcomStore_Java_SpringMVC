package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.entity.User;
import com.taidev198.ecomstorejavaspringmvc.entity.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDAO {

    @Autowired
    JdbcTemplate _jdbcTemplate;

    public List<User> getAllUsers() {
        List<User> users;
        users = _jdbcTemplate.query("select * from user_ecom ;", new UserMapper());
        return users;
    }
}
