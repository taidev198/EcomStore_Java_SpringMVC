package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.entity.Role;
import com.taidev198.ecomstorejavaspringmvc.entity.RoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RoleDAO {

   @Autowired
   JdbcTemplate _jdbcTemplate;

    public Role findById(int id) {
        String sql = "select * from role_ecom where id = " + id;
        return _jdbcTemplate.queryForObject(sql, new RoleMapper());
    }

    public List<Role> findAll() {
        return _jdbcTemplate.query("select * from role_ecom", new RoleMapper());
    }
}
