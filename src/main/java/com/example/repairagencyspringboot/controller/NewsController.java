package com.example.repairagencyspringboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class NewsController {

    @GetMapping(value = "news")
    public String news() {
        return "news";
    }
}
