package com.taidev198.ecomstorejavaspringmvc.service.admin;

import com.taidev198.ecomstorejavaspringmvc.dao.RoleDAO;
import com.taidev198.ecomstorejavaspringmvc.entity.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements IRoleService {

    @Autowired
    RoleDAO roleDAO;


    @Override
    public List<Role> findAll() {
        return roleDAO.findAll();
    }

    @Override
    public Role findById(int id) {
        return roleDAO.findById(id);
    }
}
