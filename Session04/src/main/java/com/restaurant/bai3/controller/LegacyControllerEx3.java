package com.restaurant.bai3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/bai3")
public class LegacyControllerEx3 {
    //lay chi tiet don hang theo ID  (cach A - PathVariable)
    @GetMapping("/orders/{id}")
    @ResponseBody
    public String getOrderById(@PathVariable ("id") Long id) {
        return "Chi tiet don hang so " + id;
    }
}