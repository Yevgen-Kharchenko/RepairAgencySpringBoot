package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.enums.Status;
import com.example.repairagencyspringboot.repository.OrderRepo;
import com.example.repairagencyspringboot.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


    @Controller
    @RequestMapping("/users")
    public class UsersController {

        @Autowired UserRepo repository;
        @GetMapping
        @RequestMapping
        public String showUsers(Model model, Pageable pageable) {
            Page<User> users = repository.findAll(pageable);
            model.addAttribute("users",users.getContent());
            model.addAttribute("usersPages",users.getTotalPages());
            model.addAttribute("currentPage", pageable.getPageNumber());
            return "users";
        }
    }



