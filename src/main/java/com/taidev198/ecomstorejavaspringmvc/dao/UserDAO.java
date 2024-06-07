package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.entity.User;
import com.taidev198.ecomstorejavaspringmvc.entity.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
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
            StringBuilder queryBuilder = new StringBuilder();
            queryBuilder.append("update user_ecom set username = '"+ user.getUsername()+"', fullname = '"+user.getFullname()+"', password = '"+user.getPassword()+"', email = '"+user.getEmail()+"', number = "+user.getNumber()+", address = '"+user.getAddress()+"', statusId = "+ user.getStatusId() +", roleId = " + user.getRoleId() +";");
        return   _jdbcTemplate.update(queryBuilder.toString());
    }

    public int deleteUser(int id) {
        String sql = "delete from user_ecom where id = " + id;
        return  _jdbcTemplate.update(sql);

    }


    public User getUserByEmail(String email) {
        List<User> user = null;
        StringBuilder sql = new StringBuilder("select * from user_ecom where email = '"+email+"';");
        System.out.println(sql);
        user = _jdbcTemplate
                .query(sql.toString(),
                        new UserMapper());
        if (user.isEmpty())
            return null;
        return user.get(0);
    }

    //https://stackoverflow.com/questions/1905607/cannot-issue-data-manipulation-statements-with-executequery
    public int createUser(User user) {
        StringBuilder queryBuilder = new StringBuilder();
        queryBuilder.append("INSERT INTO user_ecom (username, fullname, password, email, number, address, statusId, roleId) VALUE ");
        queryBuilder.append("('"+ user.getUsername()+"', '"+user.getFullname()+"', '"+user.getPassword()+"', '"+user.getEmail()+"', '"+user.getNumber()+"', '"+user.getAddress()+"', 1, 1);");
        return  _jdbcTemplate
                .update(queryBuilder.toString());
    }
}
