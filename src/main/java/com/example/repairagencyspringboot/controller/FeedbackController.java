package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.repository.FeedbackRepo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/feedback")
public class FeedbackController {
    @Resource
    private FeedbackRepo repository;

    @GetMapping
    public String feedback(Model model) {
        model.addAttribute("feedback", repository.findAll());

        System.out.println(repository);
        return "feedback";
    }
}
