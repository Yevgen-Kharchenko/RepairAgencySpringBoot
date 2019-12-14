package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.controller.dto.FeedbackForm;
import com.example.repairagencyspringboot.model.Feedback;
import com.example.repairagencyspringboot.model.User;
import com.example.repairagencyspringboot.repository.FeedbackRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;

@Service
public class FeedbackService {
    @Autowired
    private FeedbackRepo feedbackRepo;
    @Autowired
    private UserService userService;

    /**
     * Converts data from FeedbackForm to Feedback and stores it into DB
     *
     * @param form
     * @return Feedback
     */
    @Transactional
    public Feedback addFeedback(FeedbackForm form) {
        if (smallMessage(form.getMessage())) {
            return null;
        }
        User user = userService.getCurrentUser();
        Feedback feedback = new Feedback(form.getMessage(), LocalDate.now(), user);
        return feedbackRepo.save(feedback);
    }

    /**
     * Verifies the length of the message from FeedbackForm and returns True/False
     *
     * @param message-
     * @return-boolean
     */
    private boolean smallMessage(String message) {
        return message.length() < 10;
    }
}
