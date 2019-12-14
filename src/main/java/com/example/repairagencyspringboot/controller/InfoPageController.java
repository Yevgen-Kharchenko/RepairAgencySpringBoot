package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.repository.FeedbackRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InfoPageController {
    @Autowired
    private FeedbackRepo repository;

    @GetMapping(value = "about")
    public String about() {
        return "about";
    }

    @GetMapping(value = "blog-post")
    public String posts() {
        return "blog-post";
    }

    @GetMapping(value = "contacts")
    public String contacts() {
        return "contacts";
    }

    @GetMapping(value = "gallery-masonry")
    public String gallery() {
        return "gallery-masonry";
    }

    @GetMapping(value = "/")
    public String home(Model model) {
        model.addAttribute("feedback", repository.findAll());
        return "index";
    }

    @GetMapping(value = "blog-masonry")
    public String blog() {
        return "blog-masonry";
    }

    @GetMapping(value = "privacy")
    public String privacy() {
        return "privacy";
    }

    @GetMapping(value = "services")
    public String services() {
        return "services";
    }

    @GetMapping(value = "team")
    public String team() {
        return "team";
    }

    @GetMapping(value = "team-member-profile")
    public String member() {
        return "team-member-profile";
    }

    @GetMapping(value = "template")
    public String template() {
        return "template";
    }
}
