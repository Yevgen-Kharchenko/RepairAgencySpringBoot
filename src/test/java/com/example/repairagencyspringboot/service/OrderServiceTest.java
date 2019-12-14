package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.controller.dto.OrderForm;
import com.example.repairagencyspringboot.model.Order;
import com.example.repairagencyspringboot.model.RepairType;
import com.example.repairagencyspringboot.model.User;
import com.example.repairagencyspringboot.model.enums.Role;
import com.example.repairagencyspringboot.model.enums.Status;
import com.example.repairagencyspringboot.repository.OrderRepo;
import com.example.repairagencyspringboot.repository.RepairTypeRepo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.time.LocalDate;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

@RunWith(SpringJUnit4ClassRunner.class)
public class OrderServiceTest {

    @InjectMocks
    private OrderService orderService;

    @Mock
    private UserService userService;

    @Mock
    private OrderRepo orderRepo;

    @Mock
    private RepairTypeRepo repairTypeRepo;

    @Test
    public void addOrder() {
        OrderForm orderForm = new OrderForm();
        orderForm.setMessage("Test message");
        orderForm.setRepairTypeName("TABLET");

        User user = new User("login", "pass", Role.CUSTOMER);
        when(userService.getCurrentUser()).thenReturn(user);

        RepairType repairType = new RepairType("TABLET");
        when(repairTypeRepo.findByTitle(orderForm.getRepairTypeName())).thenReturn(repairType);

        Order order = new Order(LocalDate.now(), repairType, user, Status.NEW);
        when(orderRepo.save(any())).thenReturn(order);
        Order newOrder = orderService.addOrder(orderForm);

        assertNotNull(newOrder);
        assertEquals(newOrder.getRepairType().toString(), orderForm.getRepairTypeName());
        assertEquals(newOrder.getUser(), user);
        assertEquals(newOrder.getStatus(), Status.NEW);
    }
}