package com.example.repairagencyspringboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class CommentController {

    @GetMapping(value = "order-comment")
    public String comment() {
        return "order-comment";
    }
}