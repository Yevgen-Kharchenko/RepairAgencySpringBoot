package com.example.repairagencyspringboot.controller.error;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class AccessDeniedController {

    @GetMapping(value = "403")
    public String access() {
        return "403";
    }
}
