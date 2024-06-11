package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.dao.ImageDAO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductImageDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImageServiceImpl implements IImageService{

    @Autowired
    ImageDAO imageDAO;

    @Override
    public List<ProductImageDTO> getImagesByProductId(Long productId) {
        return imageDAO.getImagesByProductId(productId);
    }

    @Override
    public List<ProductImageDTO> getAvatarImages() {
        return imageDAO.getAvatarImages();
    }
}
