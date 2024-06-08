package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductDAO {

    @Autowired
    private JdbcTemplate _jdbcTemplate;

    public List<Product> getProductsByCategory(String category) {
        return null;
    }

    public void deleteProduct(int id) {

    }

    public Product updateProduct(Product product) {
        return null;
    }

    public Product addProduct(Product product) {
        return null;
    }

    public Product getProductById(int id) {
        return null;
    }

    public List<Product> getAllProducts() {
        return null;
    }
}
