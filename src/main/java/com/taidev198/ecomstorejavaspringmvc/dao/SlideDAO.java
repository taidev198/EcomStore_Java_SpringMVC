package com.taidev198.ecomstorejavaspringmvc.dao;
import com.taidev198.ecomstorejavaspringmvc.entity.MapperSlide;
import com.taidev198.ecomstorejavaspringmvc.entity.Slide;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SlideDAO {
    @Autowired
    public JdbcTemplate _jdbcTemplate;

    public List<Slide> getSlides() {
        List<Slide> slides;
        slides = _jdbcTemplate.query("select * from slide ;", new MapperSlide());
        return slides;
    }

}
