package com.example.repairagencyspringboot.controller.error;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class NotFoundController {

    @GetMapping(value = "404")
    public String access() {
        return "404";
    }
}
