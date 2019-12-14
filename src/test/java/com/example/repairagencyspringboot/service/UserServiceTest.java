package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.controller.dto.RegistrationForm;
import com.example.repairagencyspringboot.exception.UserExistException;
import com.example.repairagencyspringboot.model.User;
import com.example.repairagencyspringboot.model.enums.Role;
import com.example.repairagencyspringboot.repository.UserRepo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Optional;

import static org.junit.Assert.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.when;

@RunWith(SpringJUnit4ClassRunner.class)
public class UserServiceTest {

    @InjectMocks
    private UserService userService;

    @Mock
    private UserRepo userRepo;

    @Mock
    private PasswordEncoder passwordEncoder;

    @Test
    public void validateUserSuccess() {
        String login = "login";
        String password = "password";
        when(userRepo.findByLogin(any())).thenReturn(new User(login, password, Role.CUSTOMER));

        Optional<User> user = userService.validateUser(login, password);
        assertTrue(user.isPresent());
    }

    @Test
    public void validateUserError() {
        String login = "login";
        String password = "password";
        String wrongPassword = "wrongPassword";
        when(userRepo.findByLogin(any())).thenReturn(new User(login, password, Role.CUSTOMER));
        Optional<User> user = userService.validateUser(login, wrongPassword);
        assertFalse(user.isPresent());
    }

    @Test(expected = UserExistException.class)
    public void registerUserError() {
        String login = "login";
        String password = "password";
        RegistrationForm form
                = new RegistrationForm("First", "Last", "phone", login, password, password);
        when(userRepo.existsByLogin(any())).thenReturn(true);
        userService.registerUser(form, Role.CUSTOMER);
    }

    @Test
    public void registerUserSuccess() {
        String login = "login";
        String password = "password";
        RegistrationForm form
                = new RegistrationForm("First", "Last", "phone", login, password, password);
        when(userRepo.existsByLogin(any())).thenReturn(false);
        when(passwordEncoder.encode(anyString())).thenReturn("EncodedPassword");
        when(userRepo.save(any(User.class))).thenAnswer(i -> i.getArguments()[0]);

        User user = userService.registerUser(form, Role.CUSTOMER);
        assertNotNull(user);
        assertEquals(form.getLogin(), user.getLogin());
        assertEquals(form.getFirst_name(), user.getFirstName());
        assertEquals(form.getLast_name(), user.getLastName());
    }
}