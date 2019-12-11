package com.example.repairagencyspringboot.service;


import com.example.repairagencyspringboot.entity.Comments;
import com.example.repairagencyspringboot.entity.Orders;
import com.example.repairagencyspringboot.entity.RepairsTypes;
import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.enums.Status;
import com.example.repairagencyspringboot.form.CommentForm;
import com.example.repairagencyspringboot.form.OrderForm;
import com.example.repairagencyspringboot.form.StatusForm;
import com.example.repairagencyspringboot.repository.CommentsRepo;
import com.example.repairagencyspringboot.repository.OrderRepo;
import com.example.repairagencyspringboot.repository.RepairsTypesRepo;
import com.example.repairagencyspringboot.repository.UserRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class OrderService {
    private static final Logger LOG = LoggerFactory.getLogger(OrderService.class);
    @Autowired
    private OrderRepo orderRepo;
    @Autowired
    private UserRepo userRepo;
    @Autowired
    private UserService userService;
    @Autowired
    private CommentsRepo commentsRepo;
    @Autowired
    private RepairsTypesRepo repairsTypesRepo;


    public Orders addOrder(OrderForm form) {
        if (smallMessage(form.getMessage()) || (form.getRepairTypeName().equals("NONE"))) {
            return null;
        }
        LOG.info("RepairTypeName: " + form.getRepairTypeName());
        LOG.info("in addOrder method");
        User user = userService.getCurrentUser();
        LOG.info("Current user: " + user);
        RepairsTypes repairsTypes = repairsTypesRepo.findByTitle(form.getRepairTypeName());
        LOG.info("RepairType: " + repairsTypes);
        Orders order = orderRepo.save(new Orders(LocalDate.now(), repairsTypes, user, Status.NEW));
        LOG.info("Save order: " + order);
        Comments comments = new Comments(LocalDate.now(), form.getMessage(), user, order);
        commentsRepo.save(comments);
        LOG.info("Save comments: " + comments);
        LOG.info("Return order: " + order);
        return order;
    }

    private boolean smallMessage(String message) {
        return message.length() < 10;
    }

    public List<RepairsTypes> getRepairTypesNames() {
        List<RepairsTypes> repairTypesNames = repairsTypesRepo.findAll();
        return repairTypesNames;
    }

    public Orders getOrderById(Long id) {

        Orders order = null;
        Optional<Orders> o = orderRepo.findById(id);
        if (o.isPresent()) {
            order = o.get();
        } else {
            LOG.info("Order not found!");
        }
        LOG.info("order: " + order);
        return order;
    }

    public List<Comments> getCommentsByOrderId(Long id) {
        List<Comments> comments = commentsRepo.findAllByOrders(getOrderById(id));
        comments.remove(0);
        return comments;
    }

    public Comments getFirstCommentByOrderId(Long id) {
        List<Comments> comments = commentsRepo.findAllByOrders(getOrderById(id));
        Comments comment = comments.get(0);
        return comment;
    }

    public Comments addNewComment(CommentForm form) {
        if (smallMessage(form.getMessage())) {
            return null;
        }
        User user = userService.getCurrentUser();
        Comments comment = new Comments(LocalDate.now(),
                form.getMessage(), user,
                getOrderById(Long.parseLong(form.getOrderId())) );

        return commentsRepo.save(comment);
    }


    public boolean changeStatus(StatusForm form) {
        Orders order = getOrderById(Long.parseLong(form.getOrderId()));
        if(form.getPrice()!=null){
            order.setPrice(Double.parseDouble(form.getPrice()));
        }
        order.setStatus(Status.valueOf(form.getStatus()));
        orderRepo.save(order);
        return true;
    }
}
