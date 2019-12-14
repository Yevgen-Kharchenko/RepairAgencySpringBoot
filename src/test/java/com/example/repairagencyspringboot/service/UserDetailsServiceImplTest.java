package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.model.User;
import com.example.repairagencyspringboot.model.enums.Role;
import com.example.repairagencyspringboot.repository.UserRepo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.servlet.http.HttpSession;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.mockito.Mockito.when;

@RunWith(SpringJUnit4ClassRunner.class)
public class UserDetailsServiceImplTest {

    @Mock
    private UserRepo userRepo;

    @Mock
    private HttpSession session;

    @Test
    public void loadUserByUsername_success() {
        User user = new User("login", "pass", Role.CUSTOMER);
        when(userRepo.findByLogin("login")).thenReturn(user);

        assertNotNull(user);
    }

    @Test
    public void loadUserByUsername_error() {
        User user = new User("login", "pass", Role.CUSTOMER);
        when(userRepo.findByLogin("logan")).thenReturn(null);

        assertNull(user);
    }
}