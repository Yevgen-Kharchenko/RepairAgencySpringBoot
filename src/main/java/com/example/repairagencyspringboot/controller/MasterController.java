package com.example.repairagencyspringboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class MasterController {

    @GetMapping(value = "master")
    public String master() {
        return "master";
    }
}
