package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.controller.dto.CommentForm;
import com.example.repairagencyspringboot.model.Comment;
import com.example.repairagencyspringboot.model.User;
import com.example.repairagencyspringboot.repository.CommentsRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class CommentsService {
    private static final Logger LOG = LoggerFactory.getLogger(CommentsService.class);
    @Autowired
    private OrderService orderService;
    @Autowired
    private UserService userService;
    @Autowired
    private CommentsRepo commentsRepo;

    /**
     * Verifies the length of the message from OrderForm and returns True/False
     *
     * @param message
     * @return
     */
    private boolean smallMessage(String message) {
        return message.length() < 10;
    }


    /**
     * Gets list of Comments from DB by Order ID
     *
     * @param id
     * @return
     */
    public List<Comment> getCommentsByOrderId(Long id) {
        List<Comment> comments = commentsRepo.findAllByOrder(orderService.getOrderById(id));
        return comments;
    }

    /**
     * Converts data from CommentForm to Comment and stores it into DB
     *
     * @param form
     * @return
     */
    public Comment addNewComment(CommentForm form) {
        if (smallMessage(form.getMessage())) {
            return null;
        }
        User user = userService.getCurrentUser();
        Comment comment = new Comment(LocalDate.now(),
                form.getMessage(), user,
                orderService.getOrderById(Long.parseLong(form.getOrderId())));

        return commentsRepo.save(comment);
    }


}
