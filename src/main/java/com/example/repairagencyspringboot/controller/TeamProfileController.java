package com.example.repairagencyspringboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class TeamProfileController {

    @GetMapping(value = "team-member-profile")
    public String member() {
        return "team-member-profile";
    }
}
