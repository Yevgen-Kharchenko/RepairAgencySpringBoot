package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.form.UserProfileForm;
import com.example.repairagencyspringboot.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/user-delete")
public class DeleteUserController {
    private static final Logger LOG = LoggerFactory.getLogger(DeleteUserController.class);
    @Resource
    private UserService userService;

    @GetMapping
    public String profile(@RequestParam(value = "id") Long id) {
        LOG.info("Get user delete controller");

         userService.deleteUser(id);
        LOG.info("deleteUser id" + id);

        return "redirect:/admin";
    }

}
