package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.controller.dto.OrderForm;
import com.example.repairagencyspringboot.controller.dto.StatusForm;
import com.example.repairagencyspringboot.model.Order;
import com.example.repairagencyspringboot.model.RepairType;
import com.example.repairagencyspringboot.model.User;
import com.example.repairagencyspringboot.model.enums.Status;
import com.example.repairagencyspringboot.repository.CommentsRepo;
import com.example.repairagencyspringboot.repository.OrderRepo;
import com.example.repairagencyspringboot.repository.RepairTypeRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class OrderService {
    private static final Logger LOG = LoggerFactory.getLogger(OrderService.class);
    @Autowired
    private OrderRepo orderRepo;
    @Autowired
    private UserService userService;
    @Autowired
    private CommentsRepo commentsRepo;
    @Autowired
    private RepairTypeRepo repairTypeRepo;

    /**
     * Converts data from OrderForm to Order and stores it into DB
     *
     * @param form
     * @return
     */
    @Transactional
    public Order addOrder(OrderForm form) {
        LOG.info("RepairTypeName: " + form.getRepairTypeName());
        LOG.info("in addOrder method");
        User user = userService.getCurrentUser();
        LOG.info("Current user: " + user);
        RepairType repairType = repairTypeRepo.findByTitle(form.getRepairTypeName());
        LOG.info("RepairType: " + repairType);
        Order order = orderRepo.save(new Order(LocalDate.now(), repairType, user, Status.NEW));
        LOG.info("Save order: " + order);
        return order;
    }

    /**
     * Gets List<RepairsTypes> from repairsTypes Repository
     *
     * @return
     */
    public List<RepairType> getRepairTypesNames() {
        List<RepairType> repairTypesNames = repairTypeRepo.findAll();
        return repairTypesNames;
    }

    /**
     * Finds Order from the DB by the ID
     *
     * @param id
     * @return
     */
    public Order getOrderById(Long id) {

        Order order = null;
        Optional<Order> o = orderRepo.findById(id);
        if (o.isPresent()) {
            order = o.get();
        } else {
            LOG.info("Order not found!");
        }
        LOG.info("order: " + order);
        return order;
    }


    /**
     * Changes the Status of the Order depending on the StatusForm
     *
     * @param form
     * @return
     */
    public boolean changeStatus(StatusForm form) {
        Order order = getOrderById(Long.parseLong(form.getOrderId()));
        if (form.getPrice() != null) {
            order.setPrice(Double.parseDouble(form.getPrice()));
        }
        order.setStatus(Status.valueOf(form.getStatus()));
        orderRepo.save(order);
        return true;
    }
}
