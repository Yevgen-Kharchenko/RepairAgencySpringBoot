package com.example.repairagencyspringboot.service;

import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.enums.Role;
import com.example.repairagencyspringboot.dto.ProfileForm;
import com.example.repairagencyspringboot.dto.RegistrationForm;
import com.example.repairagencyspringboot.dto.UserProfileForm;
import com.example.repairagencyspringboot.repository.UserRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.acls.model.NotFoundException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
public class UserService {
    private static final Logger LOG = LoggerFactory.getLogger(UserService.class);
    @Resource
    private UserRepo userRepo;
    @Resource
    private PasswordEncoder passwordEncoder;

    public Optional<User> validateUser(String login, String password) {
        User user = userRepo.findByLogin(login);
        return user != null && user.getPassword().equals(password)
                ? Optional.of(user) : Optional.empty();
    }

    public User registerUser(RegistrationForm form, Role role) {
        LOG.info("Register user");
        if (loginExist(form.getLogin())) {
            return null;
        }

        String password = passwordEncoder.encode(form.getPassword());

        User user = new User(form.getLogin(), password, form.getFirst_name(), form.getLast_name(), form.getPhone(), role);
        LOG.info("New user: " + user);
        return userRepo.save(user);
    }

    public User getCurrentUser() throws NotFoundException {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        if (null == auth) {
            throw new NotFoundException("");
        }

        Object obj = auth.getPrincipal();
        String username = "";

        if (obj instanceof UserDetails) {
            username = ((UserDetails) obj).getUsername();
        } else {
            username = obj.toString();
        }

        User u = userRepo.findByLogin(username);
        return u;
    }

    private boolean loginExist(String login) {
        return userRepo.findByLogin(login) != null;
    }

    public User updateUser(ProfileForm profileForm) {
        LOG.info("Edit profile");
        User user = getCurrentUser();
        user.setLogin(profileForm.getLogin());
        user.setFirstName(profileForm.getFirst_name());
        user.setLastName(profileForm.getLast_name());
        user.setPhone(profileForm.getPhone());

        LOG.info("updated user: " + user);
        return userRepo.save(user);
    }

    public User getUserById(Long id) {
        User userProfile=null;
        Optional<User> user = userRepo.findById(id);
        if (user.isPresent()) {
            userProfile = user.get();
        } else {
            LOG.info("Person not found!");
        }
        LOG.info("user for Edit: "+userProfile);
        return userProfile;
    }

    public User updateUserProfile(UserProfileForm form) {
        LOG.info("Edit user profile");
        Long id =Long.parseLong(form.getUserId());
        User user = getUserById(id);

        user.setLogin(form.getLogin());
        user.setFirstName(form.getFirst_name());
        user.setLastName(form.getLast_name());
        user.setPhone(form.getPhone());
        user.setRole(Role.valueOf(form.getRole()));
        LOG.info("updated user: " + user);

        return userRepo.save(user);
    }

    public List<String> getRoleNames() {
        return Stream.of(Role.values())
                .map(Role::name)
                .collect(Collectors.toList());
    }


    public void deleteUser(Long id) {
        userRepo.deleteById(id);
    }
}
