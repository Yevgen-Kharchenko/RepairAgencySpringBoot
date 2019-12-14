package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.controller.dto.StatusForm;
import com.example.repairagencyspringboot.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/status")
public class StatusController {
    private static final Logger LOG = LoggerFactory.getLogger(StatusController.class);
    @Autowired
    private OrderService orderService;

    @GetMapping
    public String comment(Model model) {
        model.addAttribute("statusForm", new StatusForm());
        LOG.info("addAttribute statusForm" + new StatusForm());
        return "order-comment";
    }

    @PostMapping
    public String status(@ModelAttribute("statusForm") StatusForm form, Model model) {
        LOG.info("StatusForm {}", form);

        if (orderService.changeStatus(form)) {
            model.addAttribute("notification", "Order status changed!");
            return "redirect:/order-comment?orderId=" + form.getOrderId();
        }

        return "redirect:/order-comment?orderId=" + form.getOrderId();
    }
}
