package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.controller.dto.LoginForm;
import com.example.repairagencyspringboot.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
    private static final Logger LOG = LoggerFactory.getLogger(LoginController.class);

    @Autowired
    private UserService userService;

    @GetMapping
    public String login(Model model) {
        model.addAttribute("command", new LoginForm());

        return "login";
    }

}
