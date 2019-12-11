package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.entity.Feedback;
import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.dto.FeedbackForm;
import com.example.repairagencyspringboot.repository.FeedbackRepo;
import com.example.repairagencyspringboot.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;

@Service
public class FeedbackService {
    @Autowired
    private FeedbackRepo feedbackRepo;
    @Autowired
    private UserRepo userRepo;
    @Autowired
    private UserService userService;

    public Feedback addFeedback(FeedbackForm form) {
        if (smallMessage(form.getMessage())) {
            return null;
        }
        User user = userService.getCurrentUser();
        Feedback feedback = new Feedback(form.getMessage(), LocalDate.now(), user);
        return feedbackRepo.save(feedback);
    }

    private boolean smallMessage(String message) {
        return message.length() < 10;
    }
}
