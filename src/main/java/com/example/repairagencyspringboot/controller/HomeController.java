package com.example.repairagencyspringboot.controller;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class HomeController {
    
    @GetMapping(value = "/")
    public String home(){
        return "index";
    }
}
