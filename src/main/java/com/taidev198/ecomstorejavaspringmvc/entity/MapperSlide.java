package com.taidev198.ecomstorejavaspringmvc.entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class MapperSlide implements RowMapper<Slide> {

    @Override
    public Slide mapRow(ResultSet rs, int rowNum) throws SQLException {
        Slide slide = new Slide();
        slide.setId(rs.getInt("id"));
        slide.setCaption(rs.getString("caption"));
        slide.setContent(rs.getString("content"));
        slide.setImg(rs.getString("img"));
        return slide;
    }
}
