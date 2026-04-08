package com.restaurant.bai2.repository;

import org.springframework.stereotype.Repository;

@Repository
public class OrderRepositoryEx2 {
    public String getAllOrders() {
        return "Ds toan bo don hang";
    }
    public String getOrderById(Long id) {
        return "Thong tin don hang voi ID: " + id;
    }
}
