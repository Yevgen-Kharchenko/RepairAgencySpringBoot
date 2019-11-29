package com.example.repairagencyspringboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class PrivacyController {

    @GetMapping(value = "privacy")
    public String privacy() {
        return "privacy";
    }
}
