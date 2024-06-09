package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.entity.OrderDetails;

import java.util.List;

public interface IOrderDetailsService {

    List<OrderDetails> findAll();
    OrderDetails findById(Long id);
    OrderDetails save(OrderDetails orderDetails);
    OrderDetails update(OrderDetails orderDetails);
    void delete(OrderDetails orderDetails);

}
