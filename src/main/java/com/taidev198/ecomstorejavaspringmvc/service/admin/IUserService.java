package com.taidev198.ecomstorejavaspringmvc.service.admin;

import com.taidev198.ecomstorejavaspringmvc.entity.User;

import java.util.List;

public interface IUserService {

    List<User> getAllUsers();
    User getUserById(int id);
    User getUserByUsername(String username);
    User getUserByEmail(String email);
    int createUser(User user);
}
