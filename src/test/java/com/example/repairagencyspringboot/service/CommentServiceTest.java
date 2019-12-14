package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.controller.dto.CommentForm;
import com.example.repairagencyspringboot.model.Comment;
import com.example.repairagencyspringboot.model.Order;
import com.example.repairagencyspringboot.model.RepairType;
import com.example.repairagencyspringboot.model.User;
import com.example.repairagencyspringboot.model.enums.Role;
import com.example.repairagencyspringboot.model.enums.Status;
import com.example.repairagencyspringboot.repository.CommentsRepo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.time.LocalDate;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class CommentServiceTest {

    @InjectMocks
    private CommentsService commentsService;

    @Mock
    private UserService userService;

    @Mock
    private OrderService orderService;

    @Mock
    private CommentsRepo commentsRepo;

    @Test
    public void getCommentsByOrderId() {
        User user = new User("login", "pass", Role.CUSTOMER);
        Order order = new Order(LocalDate.now(), new RepairType("TABLET"), user, Status.NEW);

        List<Comment> comments = List.of(
                new Comment(LocalDate.now(), "First Message", user, order),
                new Comment(LocalDate.now(), "Second Message", user, order));
        when(commentsRepo.findAllByOrder(any())).thenReturn(comments);

        List<Comment> receivedComments = commentsService.getCommentsByOrderId(1L);
        assertEquals(2, receivedComments.size());
    }

    @Test
    public void addNewComment() {
        User user = new User("login", "pass", Role.CUSTOMER);
        when(userService.getCurrentUser()).thenReturn(user);
        Order order = new Order(LocalDate.now(), new RepairType("TABLET"), user, Status.NEW);
        order.setId(1L);
        when(orderService.getOrderById(any())).thenReturn(order);
        String message = "Message message";
        CommentForm commentForm = new CommentForm(message, "1");
        Comment expectedComment = new Comment(LocalDate.now(), message, user, order);
        when(commentsRepo.save(any(Comment.class))).thenReturn(expectedComment);
        Comment comment = commentsService.addNewComment(commentForm);
        assertNotNull(comment);
    }
}