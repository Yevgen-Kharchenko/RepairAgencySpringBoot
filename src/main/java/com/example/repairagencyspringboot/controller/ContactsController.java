package com.example.repairagencyspringboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class ContactsController {

    @GetMapping(value = "contacts")
    public String contacts() {
        return "contacts";
    }
}
