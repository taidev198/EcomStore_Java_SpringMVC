package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.entity.Product;

import java.util.List;

public interface IProductService {

    List<Product> getAllProducts();
    Product getProductById(int id);
    Product addProduct(Product product);
    Product updateProduct(Product product);
    void deleteProduct(int id);
    List<Product> getProductsByCategory(String category);
}
