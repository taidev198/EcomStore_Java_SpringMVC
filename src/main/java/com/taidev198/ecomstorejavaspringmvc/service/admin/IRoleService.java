package com.taidev198.ecomstorejavaspringmvc.service.admin;

import com.taidev198.ecomstorejavaspringmvc.entity.Role;

import java.util.List;

public interface IRoleService {

    List<Role> findAll();
    Role findById(int id);
}
