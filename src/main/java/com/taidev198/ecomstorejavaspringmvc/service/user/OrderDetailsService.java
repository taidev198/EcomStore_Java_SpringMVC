package com.taidev198.ecomstorejavaspringmvc.service.user;


import com.taidev198.ecomstorejavaspringmvc.dao.OrderDetailsDAO;
import com.taidev198.ecomstorejavaspringmvc.entity.OrderDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetailsService implements IOrderDetailsService {

    @Autowired
    OrderDetailsDAO orderDetailsDAO;


    @Override
    public List<OrderDetails> findAll() {
        return orderDetailsDAO.findAll();
    }

    @Override
    public OrderDetails findById(Long id) {
        return orderDetailsDAO.findById(id);
    }

    @Override
    public OrderDetails save(OrderDetails orderDetails) {
        return orderDetailsDAO.save(orderDetails);
    }

    @Override
    public OrderDetails update(OrderDetails orderDetails) {
        return orderDetailsDAO.update(orderDetails);
    }

    @Override
    public void delete(OrderDetails orderDetails) {
        orderDetailsDAO.delete(orderDetails);
    }
}
