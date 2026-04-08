package com.restaurant.bai2.controller;

import com.restaurant.bai2.service.OrderServiceEx2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/bai2")
public class LegacyControllerEx2 {

    private final OrderServiceEx2 orderService;

    @Autowired
    public LegacyControllerEx2(OrderServiceEx2 orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/orders")
    @ResponseBody
    public String getAllOrders() {
        return orderService.getAllOrders();
    }

    @GetMapping("/orders/{id}")
    @ResponseBody
    public String getOrderById(@PathVariable Long id) {
        return orderService.getOrderById(id);
    }

    @GetMapping("/menu")
    @ResponseBody
    public String getMenu(
            @RequestParam(value = "category", required = false, defaultValue = "chay") String category    ) {
        return "Menu loai: " + category;
    }
}