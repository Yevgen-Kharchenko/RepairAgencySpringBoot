package com.example.repairagencyspringboot.service;


import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.repository.UserRepo;
import com.example.repairagencyspringboot.security.UserDetailsImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpSession;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    private final UserRepo userRepo;
    private final HttpSession session;

    public UserDetailsServiceImpl(UserRepo userRepo, HttpSession session) {
        this.userRepo = userRepo;
        this.session = session;
    }

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        User user = userRepo.findByLogin(login);
        if (user == null) {
            throw new UsernameNotFoundException("User not found! Username : " + login);
        }
        session.setAttribute("user", user);
        return new UserDetailsImpl(user);
    }
}
