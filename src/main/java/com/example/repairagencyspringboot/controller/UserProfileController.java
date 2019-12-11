package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.form.ProfileForm;
import com.example.repairagencyspringboot.form.UserProfileForm;
import com.example.repairagencyspringboot.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/user-profile")
public class UserProfileController {
    private static final Logger LOG = LoggerFactory.getLogger(UserProfileController.class);
    @Resource
    private UserService userService;

    @GetMapping
    public String profile(@RequestParam(value = "id") Long id, Model model) {
        LOG.info("Get user profile Page");
        model.addAttribute("userProfileForm", new UserProfileForm());
        LOG.info("addAttribute userProfileForm" + new UserProfileForm());

        model.addAttribute("userProfile", userService.getUserById(id));
        LOG.info("addAttribute userProfile" + userService.getUserById(id));

        model.addAttribute("roleNames", userService.getRoleNames());
        LOG.info("addAttribute repairTypesNames" + userService.getRoleNames());

        return "user-profile";
    }

    @PostMapping
    public String profileUser(@ModelAttribute("profileForm") UserProfileForm form, Model model) {
        LOG.info("Form {}", form);
        User user = userService.updateUserProfile(form);
        model.addAttribute("userProfile", user);
        return "redirect:/";
    }
}
