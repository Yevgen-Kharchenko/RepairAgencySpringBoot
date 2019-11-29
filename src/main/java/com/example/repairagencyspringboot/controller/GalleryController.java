package com.example.repairagencyspringboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class GalleryController {

    @GetMapping(value = "gallery-masonry")
    public String gallery() {
        return "gallery-masonry";
    }
}
