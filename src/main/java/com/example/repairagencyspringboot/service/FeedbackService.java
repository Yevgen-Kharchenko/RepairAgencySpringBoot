package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.entity.Feedback;
import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.enums.Role;
import com.example.repairagencyspringboot.form.FeedbackForm;
import com.example.repairagencyspringboot.form.RegistrationForm;
import com.example.repairagencyspringboot.repository.FeedbackRepo;
import com.example.repairagencyspringboot.repository.UserRepo;
import com.example.repairagencyspringboot.security.UserDetailsImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.time.LocalDate;
import java.util.Optional;

@Service
public class FeedbackService {
    @Autowired
    private FeedbackRepo feedbackRepo;
    @Autowired
    private UserRepo userRepo;

//    UserDetailsImpl userDetailsImpl = (UserDetailsImpl) org.springframework.security.core.context.SecurityContextHolder
//            .getContext().getAuthentication().getPrincipal();
//    String username= userDetailsImpl.getUsername();


    public Feedback addFeedback(FeedbackForm form){
        if (smallMessage(form.getMessage())){
            return null;
        }
        User user = userRepo.findByLogin("user1@g.com");
        Feedback feedback = new Feedback(form.getMessage(), LocalDate.now(),user);
        return feedbackRepo.save(feedback);
    }
    
    private boolean smallMessage(String message){
        return message.length()<10;
    }
}
