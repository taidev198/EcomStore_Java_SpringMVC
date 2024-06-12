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

    public List<Product> getProductsByCategory(String categoryTypeName) {
        List<Product> products;
        StringBuffer  varname1 = new StringBuffer();
        varname1.append("select ps.ProductId, ps.ProductName, ps.ProductModel,ps.ProductDescription, ps.ProductCategoryID, ps.ProductContent from ");
        varname1.append(" ProductCategory as pc ");
        varname1.append("join Product_shop as ps on ps.ProductId = pc.ProductCategoryID ");
        varname1.append("join ProductCategoryType as pct on pct.ProductCategoryID = pc.ProductCategoryID ");
        varname1.append("join CategoryType as ct on ct.CategoryTypeID = pct.CategoryTypeID and ct.CategoryTypeName = '").append(categoryTypeName).append("' ");
        varname1.append(" order by ps.ProductId asc ;");
        products = _jdbcTemplate.query(varname1.toString(), new ProductMapper());
        return products;
    }

    public List<Product> getProductsByBrands(String brandTypeName) {
        List<Product> products;
        StringBuffer  varname1 = new StringBuffer();
        varname1.append("select ps.ProductId, ps.ProductName, ps.ProductModel,ps.ProductDescription, ps.ProductCategoryID, ps.ProductContent from ");
        varname1.append(" ProductCategory as pc ");
        varname1.append("join Product_shop as ps on ps.ProductId = pc.ProductCategoryID ");
        varname1.append("join ProductCategoryType as pct on pct.ProductCategoryID = pc.ProductCategoryID ");
        varname1.append("join CategoryType as ct on ct.CategoryTypeID = pct.CategoryTypeID and ct.CategoryTypeName = '").append(brandTypeName).append("' ");
        varname1.append(" order by ps.ProductId asc ;");
        products = _jdbcTemplate.query(varname1.toString(), new ProductMapper());
        return products;
    }

    public void deleteProduct(int id) {
        String sql = "delete from product_shop where ProductId = " + id;
        _jdbcTemplate.update(sql);

    }

    public Product updateProduct(Product product) {
//        StringBuilder queryBuilder = new StringBuilder();
//        queryBuilder.append("update product_ecom set username = '"+ user.getUsername()+"', fullname = '"+user.getFullname()+"', password = '"+user.getPassword()+"', email = '"+user.getEmail()+"', number = "+user.getNumber()+", address = '"+user.getAddress()+"', statusId = "+ user.getStatusId() +", roleId = " + user.getRoleId() +" where id = "+ user.getId());
//        _jdbcTemplate.update(queryBuilder.toString());
        return getProductById(product.getProductId());
    }

    public Product addProduct(Product product) {
//        StringBuilder queryBuilder = new StringBuilder();
//        queryBuilder.append("INSERT INTO product_ecom (username, fullname, password, email, number, address, statusId, roleId) VALUE ");
//        queryBuilder.append("('"+ product.getUsername()+"', '"+user.getFullname()+"', '"+user.getPassword()+"', '"+user.getEmail()+"', '"+user.getNumber()+"', '"+user.getAddress()+"', 1, 1);");
//          _jdbcTemplate
//                .update(queryBuilder.toString());
          return getProductById(product.getProductId());
    }

    public Product getProductById(int id) {
        List<Product> products;
        StringBuilder sql = new StringBuilder("select * from product_shop where ProductId = "+id+";");
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
        String sql = "select * from product_shop ";
        products = _jdbcTemplate.query(sql, new ProductMapper());

        return products;
    }
}
