package com.example.repairagencyspringboot.service;


import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.repository.UserRepo;
import com.example.repairagencyspringboot.security.UserDetailsImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    private final UserRepo userRepo;

    public UserDetailsServiceImpl(UserRepo userRepo) {
        this.userRepo = userRepo;
    }

    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        User user = userRepo.findByLogin(login);
        if (user == null) {
            throw new UsernameNotFoundException("User not found! Username : " + login);
        }
        return new UserDetailsImpl(user);
    }
}
