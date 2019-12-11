package com.example.repairagencyspringboot.controller.admin;


import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.enums.Role;
import com.example.repairagencyspringboot.dto.RegistrationForm;
import com.example.repairagencyspringboot.security.SecurityService;
import com.example.repairagencyspringboot.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.Valid;

@Controller
@RequestMapping(value = "/registration")
public class RegistrationController {
    private static final Logger LOG = LoggerFactory.getLogger(RegistrationController.class);
    @Resource
    private UserService userService;
    @Autowired
    private SecurityService securityService;
    @Resource(name = "registrationValidator")
    private Validator validator;

    @InitBinder
    private void initBinder(WebDataBinder binder){
        binder.setValidator(validator);
    }

    @GetMapping
    public String getRegistrationPage(Model model){
        LOG.info("Get Registration Page");

        model.addAttribute("registrationForm", new RegistrationForm());
        return "registration";
    }

    @PostMapping
    public String registerUser(@Valid @ModelAttribute("registrationForm") RegistrationForm registrationForm, BindingResult error, Model model){
        LOG.info("Form {}", registrationForm);
        if(error.hasErrors()){
            return "registration";
        }
        User user = userService.registerUser(registrationForm, Role.CUSTOMER);
        if(user == null){
            error.rejectValue("login", "registration.login.exist");
            return "registration";
        }
        securityService.autoLogin(registrationForm.getLogin(), registrationForm.getPassword());
        return "redirect:/";
    }
}
