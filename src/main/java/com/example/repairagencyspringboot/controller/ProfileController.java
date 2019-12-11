package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.form.ProfileForm;
import com.example.repairagencyspringboot.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/profile")
public class ProfileController {
    private static final Logger LOG = LoggerFactory.getLogger(ProfileController.class);
    @Resource
    private UserService userService;

    @GetMapping
    public String profile(Model model) {
        LOG.info("Get profile Page");
        model.addAttribute("currentUser", userService.getCurrentUser());
        LOG.info("addAttribute currentUser" + userService.getCurrentUser());
        model.addAttribute("profileForm", new ProfileForm());
        LOG.info("addAttribute profileForm" + new ProfileForm());

        return "profile";
    }

    @PostMapping
    public String profile(@ModelAttribute("profileForm") ProfileForm profileForm, Model model) {
        LOG.info("Form {}", profileForm);
        userService.updateUser(profileForm);
        return "redirect:/";
    }
}
