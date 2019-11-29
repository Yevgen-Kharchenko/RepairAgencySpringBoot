package com.example.repairagencyspringboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class ServicesController {

    @GetMapping(value = "services")
    public String services() {
        return "services";
    }
}
