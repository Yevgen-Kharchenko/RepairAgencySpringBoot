package com.example.repairagencyspringboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class ProfileController {

    @GetMapping(value = "profile")
    public String profile() {
        return "profile";
    }
}
