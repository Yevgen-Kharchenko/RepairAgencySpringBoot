package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.repository.FeedbackRepo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;

@Controller

public class HomeController {
    @Resource
    private FeedbackRepo repository;

    @GetMapping(value = "/")
    public String home(Model model) {
        model.addAttribute("feedback", repository.findAll());
        return "index";
    }
}
