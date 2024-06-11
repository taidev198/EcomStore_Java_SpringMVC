package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.dto.ProductImageDTO;

import java.util.List;

public interface IImageService {
    List<ProductImageDTO> getImagesByProductId(Long productId);
    List<ProductImageDTO> getAvatarImages();
}
