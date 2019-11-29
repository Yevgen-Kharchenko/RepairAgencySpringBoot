package com.example.repairagencyspringboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class MasonryController {

    @GetMapping(value = "blog-masonry")
    public String blog() {
        return "blog-masonry";
    }
}
