package com.example.repairagencyspringboot.controller.admin;


import com.example.repairagencyspringboot.dto.LoginForm;
import com.example.repairagencyspringboot.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/login")
public class LoginController {
    private static final Logger LOG = LoggerFactory.getLogger(LoginController.class);
    @Resource
    private UserService userService;

    @GetMapping
    public String login(Model model) {
        model.addAttribute("command", new LoginForm());

        return "login";
    }


}
