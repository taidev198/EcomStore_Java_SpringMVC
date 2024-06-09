package com.taidev198.ecomstorejavaspringmvc.service.user;

import com.taidev198.ecomstorejavaspringmvc.entity.Order;

import java.util.List;

public interface IOrderService {

    List<Order> findAllOrders();
    Order findOrderById(Long id);
    Order saveOrder(Order order);
    Order updateOrder(Order order);
    void deleteOrder(Long id);
}
