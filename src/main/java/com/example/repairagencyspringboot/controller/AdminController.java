package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.enums.Status;
import com.example.repairagencyspringboot.repository.OrderRepo;
import com.example.repairagencyspringboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller

public class AdminController {
    @Resource
    private OrderRepo repository;


    @GetMapping(value = "admin")
    public String admin(Model model) {

        model.addAttribute("ordersNew",repository.findAllByStatus(Status.NEW));
        model.addAttribute("ordersOffer",repository.findAllByStatus(Status.OFFER));
        model.addAttribute("ordersInProgress",repository.findAllByStatus(Status.IN_PROGRESS));
        model.addAttribute("ordersCompleted",repository.findAllByStatus(Status.COMPLETED));
        model.addAttribute("ordersCanceled",repository.findAllByStatus(Status.CANCELED));
        model.addAttribute("ordersCl",repository.findAllByStatus(Status.CLOSED));

        return "admin";
    }
}
