package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.enums.Status;
import com.example.repairagencyspringboot.repository.OrderRepo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;

@Controller

public class MasterController {
    @Resource
    private OrderRepo repository;

    @GetMapping(value = "master")
    public String master(Model model) {

        model.addAttribute("ordersByMaster",repository.findAllByStatus(Status.IN_PROGRESS));
        return "master";
    }
}
