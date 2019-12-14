package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.controller.dto.FeedbackForm;
import com.example.repairagencyspringboot.model.Feedback;
import com.example.repairagencyspringboot.model.User;
import com.example.repairagencyspringboot.model.enums.Role;
import com.example.repairagencyspringboot.repository.FeedbackRepo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.time.LocalDate;

import static org.junit.Assert.*;
import static org.mockito.Mockito.any;
import static org.mockito.Mockito.when;

@RunWith(SpringJUnit4ClassRunner.class)
public class FeedbackServiceTest {

    @InjectMocks
    private FeedbackService feedbackService;

    @Mock
    private FeedbackRepo feedbackRepo;

    @Mock
    private UserService userService;

    @Test
    public void addFeedback_success() {

        FeedbackForm feedbackForm = new FeedbackForm();
        feedbackForm.setMessage("Test message");

        User user = new User("login", "pass", Role.CUSTOMER);

        when(userService.getCurrentUser()).thenReturn(user);

        Feedback expectedFeedback = new Feedback(feedbackForm.getMessage(), LocalDate.now(), user);

        when(feedbackRepo.save(any())).thenReturn(expectedFeedback);
        Feedback feedback = feedbackService.addFeedback(feedbackForm);

        assertNotNull(feedback);
        assertEquals(feedback.getText(), feedbackForm.getMessage());
        assertEquals(feedback.getUser(), user);

    }

    @Test
    public void addFeedback_error() {

        FeedbackForm feedbackForm = new FeedbackForm();
        feedbackForm.setMessage("Test");

        User user = new User("login", "pass", Role.CUSTOMER);

        when(userService.getCurrentUser()).thenReturn(user);

        Feedback expectedFeedback = new Feedback(feedbackForm.getMessage(), LocalDate.now(), user);

        when(feedbackRepo.save(any())).thenReturn(expectedFeedback);
        Feedback feedback = feedbackService.addFeedback(feedbackForm);

        assertNull(feedback);
    }
}