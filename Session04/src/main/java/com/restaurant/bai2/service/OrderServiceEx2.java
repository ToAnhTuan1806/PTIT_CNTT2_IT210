package com.restaurant.bai2.service;

import com.restaurant.bai2.repository.OrderRepositoryEx2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceEx2 {
    private final OrderRepositoryEx2 orderRepository;
    @Autowired
    public OrderServiceEx2(OrderRepositoryEx2 orderRepository) {
            this.orderRepository = orderRepository;
        }

    public String getAllOrders() {
        return orderRepository.getAllOrders();
    }

    public String getOrderById(Long id) {
        return orderRepository.getOrderById(id);
    }
}
