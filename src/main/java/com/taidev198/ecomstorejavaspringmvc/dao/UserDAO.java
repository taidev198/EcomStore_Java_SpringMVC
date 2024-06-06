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

    public User getUserById(int id) {
        User user = null;
        user = _jdbcTemplate
                .queryForObject("select * from user_ecom where id = " + id +";",
                        new UserMapper());
        return user;
    }

    public User getUserByUsername(String username) {
        List<User> user = null;
        StringBuilder sql = new StringBuilder("select * from user_ecom where username = '"+username+"';");
        System.out.println(sql);
        user = _jdbcTemplate
                .query(sql.toString(),
                        new UserMapper());
        if (user.isEmpty())
            return null;
        return user.get(0);
    }

    public int addUser(User user) {
        _jdbcTemplate.execute("");
        return 0;
    }

    public int updateUser(User user) {
        _jdbcTemplate.execute("");
        return 0;
    }

    public int deleteUser(int id) {
        _jdbcTemplate.execute("");
        return 0;
    }


}
