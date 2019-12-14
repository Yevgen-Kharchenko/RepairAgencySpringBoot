package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.controller.dto.RegistrationForm;
import com.example.repairagencyspringboot.exception.UserExistException;
import com.example.repairagencyspringboot.model.enums.Role;
import com.example.repairagencyspringboot.service.UserService;
import com.example.repairagencyspringboot.service.security.SecurityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping(value = "/registration")
public class RegistrationController {
    private static final Logger LOG = LoggerFactory.getLogger(RegistrationController.class);
    @Autowired
    private UserService userService;
    @Autowired
    private SecurityService securityService;
    @Autowired
    @Qualifier("registrationValidator")
    private Validator validator;

    @InitBinder
    private void initBinder(WebDataBinder binder) {
        binder.setValidator(validator);
    }

    @GetMapping
    public String getRegistrationPage(Model model) {
        LOG.info("Get Registration Page");

        model.addAttribute("registrationForm", new RegistrationForm());
        return "registration";
    }

    @PostMapping
    public String registerUser(@Valid @ModelAttribute("registrationForm") RegistrationForm registrationForm, BindingResult error) {
        LOG.info("Form {}", registrationForm);
        if (error.hasErrors()) {
            return "registration";
        }

        try {
            userService.registerUser(registrationForm, Role.CUSTOMER);
        } catch (UserExistException e) {
            LOG.error(e.getMessage());
            error.rejectValue("login", "registration.login.exist");
            return "registration";
        }

        securityService.autoLogin(registrationForm.getLogin(), registrationForm.getPassword());
        return "redirect:/";
    }
}
