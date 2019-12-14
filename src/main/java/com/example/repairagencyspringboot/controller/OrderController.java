package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.controller.dto.CommentForm;
import com.example.repairagencyspringboot.controller.dto.OrderForm;
import com.example.repairagencyspringboot.model.Order;
import com.example.repairagencyspringboot.service.CommentsService;
import com.example.repairagencyspringboot.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping(value = "/order")
public class OrderController {
    private static final Logger LOG = LoggerFactory.getLogger(OrderController.class);
    @Autowired
    private OrderService orderService;

    @Autowired
    private CommentsService commentsService;


    @GetMapping
    public String order(Model model) {
        LOG.info("Get Mapping");
        model.addAttribute("orderForm", new OrderForm());
        LOG.info("addAttribute orderForm" + new OrderForm());
        model.addAttribute("repairTypesNames", orderService.getRepairTypesNames());
        LOG.info("addAttribute repairTypesNames" + orderService.getRepairTypesNames());
        return "order";
    }

    @PostMapping
    public String order(@Valid @ModelAttribute("orderForm") OrderForm orderForm, BindingResult error, Model model) {
        LOG.info("Form {}", orderForm);

        if (error.hasErrors()) {
            return "order";
        }
        Order order = orderService.addOrder(orderForm);
        CommentForm commentForm = new CommentForm(orderForm.getMessage(), order.getId().toString());
        commentsService.addNewComment(commentForm);
        LOG.info("Order controller: save order");

        if (order == null) {
            model.addAttribute("notification", "Message must be longer than 10 characters");
            return "order";
        }
        model.addAttribute("notification", "Thank you for your order!");
        return "order";
    }
}
