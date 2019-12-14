package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.model.User;
import com.example.repairagencyspringboot.model.enums.Role;
import com.example.repairagencyspringboot.repository.UserRepo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.mockito.Mockito.when;

@RunWith(SpringJUnit4ClassRunner.class)
public class UserDetailsServiceImplTest {

    @InjectMocks
    private UserDetailsServiceImpl userDetailsService;

    @Mock
    private UserRepo userRepo;

    private String login = "login";

    @Test
    public void loadUserByUsername_success() {
        User user = new User(login, "pass", Role.CUSTOMER);
        when(userRepo.findByLogin("login")).thenReturn(user);
        UserDetails userDetails = userDetailsService.loadUserByUsername(login);
        assertNotNull(userDetails);
        assertEquals(userDetails.getUsername(), login);
    }

    @Test(expected = UsernameNotFoundException.class)
    public void loadUserByUsername_error() {
        when(userRepo.findByLogin(login)).thenReturn(null);
        userDetailsService.loadUserByUsername(login);
    }
}