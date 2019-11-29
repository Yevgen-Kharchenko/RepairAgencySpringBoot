package com.example.repairagencyspringboot.controller;


import com.example.repairagencyspringboot.enums.Role;
import com.example.repairagencyspringboot.form.LoginForm;
import com.example.repairagencyspringboot.form.RegistrationForm;
import com.example.repairagencyspringboot.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/register")
public class RegistrationController {
    private static final Logger LOG = LoggerFactory.getLogger(RegistrationController.class);
    @Resource
    private UserService userService;
    private Role role = Role.CUSTOMER;

    @GetMapping
    public String register(Model model) {
        RegistrationForm registrationForm = new RegistrationForm();
        model.addAttribute("command", registrationForm);
//        model.addAttribute("user",userService.registerUser(registrationForm,role));

        return "register";
    }


}
