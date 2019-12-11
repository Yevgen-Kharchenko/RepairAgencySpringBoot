package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.repository.OrderRepo;
import com.example.repairagencyspringboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;

@Controller

public class UserController {
    @Resource
    private OrderRepo repository;
    @Autowired
    private UserService userService;

    @GetMapping(value = "user")
    public String user(Model model) {
        User user = userService.getCurrentUser();
        model.addAttribute("orders", repository.findAllByUser(user));
        return "user";
    }
}
