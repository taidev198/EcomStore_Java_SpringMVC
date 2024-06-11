package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.dto.ProductImageDTO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductImageDTOMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ImageDAO {

    @Autowired
    private JdbcTemplate _jdbcTemplate;

    public List<ProductImageDTO> getImagesByProductId(Long productId) {
        StringBuffer  varname1 = new StringBuffer();
        varname1.append("select ps.ProductId, i.ImageUrl ");
        varname1.append("from Product_shop as ps ");
        varname1.append("join ProductImage as pi on ps.ProductId = pi.ProductId and ps.ProductId = 1 ");
        varname1.append("join Image as i on i.ImageID = pi.ImageID ");
        varname1.append("order by i.ImageUrl asc;");
        return _jdbcTemplate.query(varname1.toString(), new ProductImageDTOMapper());
    }

    public List<ProductImageDTO> getAvatarImages() {
        StringBuffer  varname1 = new StringBuffer();
        varname1.append("select ps.ProductId, i.ImageUrl ");
        varname1.append("from Product_shop as ps ");
        varname1.append("join ProductImage as pi on ps.ProductId = pi.ProductId ");
        varname1.append("join Image as i on i.ImageID = pi.ImageID and imageUrl like '%1020x570%' ");
        varname1.append("order by ps.ProductId asc;");
        return _jdbcTemplate.query(varname1.toString(), new ProductImageDTOMapper());
    }
}
