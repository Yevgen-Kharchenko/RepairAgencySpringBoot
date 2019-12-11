package com.example.repairagencyspringboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class UnderConstructionController {

    @GetMapping(value = "under-construction")
    public String construction() {
        return "under-construction";
    }
}
