package com.example.repairagencyspringboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class BlogPostController {

    @GetMapping(value = "blog-post")
    public String posts() {
        return "blog-post";
    }
}
