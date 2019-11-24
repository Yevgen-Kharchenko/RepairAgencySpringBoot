package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.enums.Role;
import com.example.repairagencyspringboot.form.RegistrationForm;
import com.example.repairagencyspringboot.repository.UserRepo;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Optional;

@Service
public class UserService {
    @Resource
    private UserRepo userRepo;
    @Resource 
    private PasswordEncoder passwordEncoder;
    
    public Optional<User> validateUser(String login, String password){
        User user = userRepo.findByLogin(login);
        return user != null && user.getPassword().equals(password) 
                ? Optional.of(user) : Optional.empty();
    }
    
    public User registerUser(RegistrationForm form, Role role){
        if (loginExist(form.getLogin())){
            return null;
        }

        String password = passwordEncoder.encode(form.getPassword());
        
        User user = new User(form.getLogin(), password, form.getFirst_name(), form.getLast_name(), form.getPhone(), role);
        
        return userRepo.save(user);
    }
    
    private boolean loginExist(String login){
        return userRepo.findByLogin(login) != null;
    }
}
