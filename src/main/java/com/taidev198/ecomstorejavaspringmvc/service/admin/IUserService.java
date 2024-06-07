package com.taidev198.ecomstorejavaspringmvc.service.admin;

import com.taidev198.ecomstorejavaspringmvc.entity.User;

import java.util.List;

public interface IUserService {

    List<User> getAllUsers();
    List<User> getListUsersByPage(int startPage, int totalPage);
    User getUserById(int id);
    User getUserByUsername(String username);
    User getUserByEmail(String email);
    int createUser(User user);
    int updateUser(User user);
    int deleteUser(int id);
}
