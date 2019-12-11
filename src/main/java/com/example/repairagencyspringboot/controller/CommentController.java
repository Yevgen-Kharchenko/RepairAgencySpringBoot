package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.entity.Comments;
import com.example.repairagencyspringboot.form.CommentForm;
import com.example.repairagencyspringboot.form.StatusForm;
import com.example.repairagencyspringboot.service.OrderService;
import com.example.repairagencyspringboot.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/order-comment")
public class CommentController {
    private static final Logger LOG = LoggerFactory.getLogger(CommentController.class);
    @Autowired
    private OrderService orderService;
    @Autowired
    private UserService userService;

    @GetMapping
    public String comment(@RequestParam(value = "orderId") Long orderId, Model model) {

        model.addAttribute("order", orderService.getOrderById(orderId));
        LOG.info("addAttribute order" + orderService.getOrderById(orderId));
        model.addAttribute("user", userService.getCurrentUser());
        LOG.info("addAttribute user" + userService.getCurrentUser());

        model.addAttribute("firstComment", orderService.getFirstCommentByOrderId(orderId));
        LOG.info("addAttribute firstComment" +  orderService.getFirstCommentByOrderId(orderId));
        model.addAttribute("comments", orderService.getCommentsByOrderId(orderId));
        LOG.info("addAttribute comments" + orderService.getCommentsByOrderId(orderId));
        model.addAttribute("commentForm", new CommentForm());
        LOG.info("addAttribute commentForm" + new CommentForm());
        model.addAttribute("statusForm", new StatusForm());
        LOG.info("addAttribute statusForm" + new StatusForm());
        return "order-comment";
    }

    @PostMapping
    public String comment(@ModelAttribute("commentForm") CommentForm form, Model model) {
        LOG.info("CommentForm {}", form);
        Comments comment = orderService.addNewComment(form);

        if(comment == null){
            model.addAttribute("notification", "Message must be longer than 10 characters");
            return  "redirect:/order-comment?orderId="+form.getOrderId();
        }

        return "redirect:/order-comment?orderId="+form.getOrderId();
    }

    @PostMapping(value = "status")
    public String status(@ModelAttribute("statusForm") StatusForm form, Model model) {
        LOG.info("StatusForm {}", form);

        if(orderService.changeStatus(form)){
            model.addAttribute("notification", "Order status changed!");
            return "redirect:/order-comment?orderId="+form.getOrderId();
        }

        return "redirect:/order-comment?orderId="+form.getOrderId();
    }
}
