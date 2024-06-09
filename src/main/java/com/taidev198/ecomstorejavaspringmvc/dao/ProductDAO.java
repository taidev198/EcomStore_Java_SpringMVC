package com.taidev198.ecomstorejavaspringmvc.dao;

import com.taidev198.ecomstorejavaspringmvc.entity.Product;
import com.taidev198.ecomstorejavaspringmvc.entity.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class ProductDAO {

    @Autowired
    private JdbcTemplate _jdbcTemplate;

    public List<Product> getProductsByCategory(int categoryId) {
        List<Product> products;
        String sql = "select * from product_ecom where id = ?";
        products = _jdbcTemplate.query(sql, new ProductMapper(), categoryId);
        return products;
    }

    public void deleteProduct(int id) {
        String sql = "delete from product_ecom where id = " + id;
        _jdbcTemplate.update(sql);

    }

    public Product updateProduct(Product product) {
//        StringBuilder queryBuilder = new StringBuilder();
//        queryBuilder.append("update product_ecom set username = '"+ user.getUsername()+"', fullname = '"+user.getFullname()+"', password = '"+user.getPassword()+"', email = '"+user.getEmail()+"', number = "+user.getNumber()+", address = '"+user.getAddress()+"', statusId = "+ user.getStatusId() +", roleId = " + user.getRoleId() +" where id = "+ user.getId());
//        _jdbcTemplate.update(queryBuilder.toString());
        return getProductById(product.getId());
    }

    public Product addProduct(Product product) {
//        StringBuilder queryBuilder = new StringBuilder();
//        queryBuilder.append("INSERT INTO product_ecom (username, fullname, password, email, number, address, statusId, roleId) VALUE ");
//        queryBuilder.append("('"+ product.getUsername()+"', '"+user.getFullname()+"', '"+user.getPassword()+"', '"+user.getEmail()+"', '"+user.getNumber()+"', '"+user.getAddress()+"', 1, 1);");
//          _jdbcTemplate
//                .update(queryBuilder.toString());
          return getProductById(product.getId());
    }

    public Product getProductById(int id) {
        List<Product> products;
        StringBuilder sql = new StringBuilder("select * from product_ecom where id = "+id+";");
        System.out.println(sql);
        products = _jdbcTemplate
                .query(sql.toString(),
                        new ProductMapper());
        if (products.isEmpty())
            return null;
        return products.get(0);
    }

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        String sql = "select * from product_ecom ";
        products = _jdbcTemplate.query(sql, new ProductMapper());

        return products;
    }
}
