package com.example.repairagencyspringboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class TeamController {

    @GetMapping(value = "team")
    public String team() {
        return "team";
    }
}
