package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.entity.Status;
import com.taidev198.ecomstorejavaspringmvc.entity.StatusMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class StatusDAO {

    @Autowired
    JdbcTemplate _jdbcTemplate;

    public Status findStatusById(int id) {

        String sql = "select * from status_ecom where id= " +id ;
        return _jdbcTemplate.queryForObject(sql, new StatusMapper());
    }

    public List<Status> getAllStatus() {
        return _jdbcTemplate.query("select * from status_ecom", new StatusMapper());
    }
}
