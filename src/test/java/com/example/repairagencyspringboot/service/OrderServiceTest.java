package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.controller.dto.OrderForm;
import com.example.repairagencyspringboot.model.Comments;
import com.example.repairagencyspringboot.model.Orders;
import com.example.repairagencyspringboot.model.RepairsTypes;
import com.example.repairagencyspringboot.model.User;
import com.example.repairagencyspringboot.model.enums.Role;
import com.example.repairagencyspringboot.model.enums.Status;
import com.example.repairagencyspringboot.repository.CommentsRepo;
import com.example.repairagencyspringboot.repository.OrderRepo;
import com.example.repairagencyspringboot.repository.RepairsTypesRepo;
import com.example.repairagencyspringboot.repository.UserRepo;
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
    private UserService userService;

    @Mock
    private OrderRepo orderRepo;

    @Mock
    private UserRepo userRepo;

    @Mock
    private CommentsRepo commentsRepo;

    @Mock
    private RepairsTypesRepo repairsTypesRepo;

    @Test
    public void addOrder() {
        OrderForm orderForm = new OrderForm();
        orderForm.setMessage("Test message");
        orderForm.setRepairTypeName("TABLET");

        User user = new User("login", "pass", Role.CUSTOMER);
        when(userService.getCurrentUser()).thenReturn(user);

        RepairsTypes repairsTypes = new RepairsTypes("TABLET");
        when(repairsTypesRepo.findByTitle(orderForm.getRepairTypeName())).thenReturn(repairsTypes);

        Orders order = new Orders(LocalDate.now(), repairsTypes, user, Status.NEW);
        when(orderRepo.save(any())).thenReturn(order);

        Comments comments = new Comments(LocalDate.now(), orderForm.getMessage(), user, order);
        when(commentsRepo.save(any())).thenReturn(comments);

        assertNotNull(order);
        assertEquals(order.getRepairsTypes(), orderForm.getRepairTypeName());
        assertEquals(order.getUser(), user);
        assertEquals(order.getStatus(), Status.NEW);

        assertNotNull(comments);
        assertEquals(comments.getComment(), orderForm.getMessage());
        assertEquals(comments.getUser(), user);
        assertEquals(comments.getOrders(), order);

    }

    @Test
    public void getRepairTypesNames() {
    }

    @Test
    public void getOrderById() {
    }

    @Test
    public void getCommentsByOrderId() {
    }

    @Test
    public void getFirstCommentByOrderId() {
    }

    @Test
    public void addNewComment() {
    }

    @Test
    public void changeStatus() {
    }
}