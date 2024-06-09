package com.taidev198.ecomstorejavaspringmvc.service.user;


import com.taidev198.ecomstorejavaspringmvc.dao.OrderDAO;
import com.taidev198.ecomstorejavaspringmvc.entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements IOrderService {

    @Autowired
    OrderDAO orderDAO;


    @Override
    public List<Order> findAllOrders() {
        return orderDAO.findAllOrders();
    }

    @Override
    public Order findOrderById(Long id) {
        return orderDAO.findOrderById(id);
    }

    @Override
    public Order saveOrder(Order order) {
        return orderDAO.saveOrder(order);
    }

    @Override
    public Order updateOrder(Order order) {
        return orderDAO.updateOrder(order);
    }

    @Override
    public void deleteOrder(Long id) {
        orderDAO.deleteOrder(id);
    }
}
