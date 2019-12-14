package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.controller.dto.ProfileForm;
import com.example.repairagencyspringboot.controller.dto.UserProfileForm;
import com.example.repairagencyspringboot.model.User;
import com.example.repairagencyspringboot.model.enums.Status;
import com.example.repairagencyspringboot.repository.OrderRepo;
import com.example.repairagencyspringboot.repository.UserRepo;
import com.example.repairagencyspringboot.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
    private static final Logger LOG = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private UserRepo userRepository;
    @Autowired
    private OrderRepo orderRepository;
    @Autowired
    private UserService userService;

    @GetMapping(value = "user")
    public String user(Model model) {
        User user = userService.getCurrentUser();
        model.addAttribute("orders", orderRepository.findAllByUser(user));
        return "user";
    }

    @GetMapping(value = "user-profile")
    public String userProfile(@RequestParam(value = "id") Long id, Model model) {
        LOG.info("Get user profile Page");
        model.addAttribute("userProfileForm", new UserProfileForm());
        LOG.info("addAttribute userProfileForm" + new UserProfileForm());

        model.addAttribute("userProfile", userService.getUserById(id));
        LOG.info("addAttribute userProfile" + userService.getUserById(id));

        model.addAttribute("roleNames", userService.getRoleNames());
        LOG.info("addAttribute repairTypesNames" + userService.getRoleNames());

        return "user-profile";
    }

    @GetMapping(value = "users")
    public String showUsers(Model model, Pageable pageable) {
        Page<User> users = userRepository.findAll(pageable);
        model.addAttribute("users", users.getContent());
        model.addAttribute("usersPages", users.getTotalPages());
        model.addAttribute("currentPage", pageable.getPageNumber());
        return "users";
    }

    @PostMapping(value = "user-profile")
    public String profileUser(@ModelAttribute("profileForm") UserProfileForm form, Model model) {
        LOG.info("Form {}", form);
        User user = userService.updateUserProfile(form);
        model.addAttribute("userProfile", user);
        return "redirect:/";
    }

    @GetMapping(value = "admin")
    public String admin(Model model) {

        model.addAttribute("ordersNew", orderRepository.findAllByStatus(Status.NEW));
        model.addAttribute("ordersOffer", orderRepository.findAllByStatus(Status.OFFER));
        model.addAttribute("ordersInProgress", orderRepository.findAllByStatus(Status.IN_PROGRESS));
        model.addAttribute("ordersCompleted", orderRepository.findAllByStatus(Status.COMPLETED));
        model.addAttribute("ordersCanceled", orderRepository.findAllByStatus(Status.CANCELED));
        model.addAttribute("ordersCl", orderRepository.findAllByStatus(Status.CLOSED));

        return "admin";
    }

    @GetMapping(value = "manager")
    public String manager(Model model) {

        model.addAttribute("ordersNew", orderRepository.findAllByStatus(Status.NEW));
        model.addAttribute("ordersOffer", orderRepository.findAllByStatus(Status.OFFER));
        model.addAttribute("ordersInProgress", orderRepository.findAllByStatus(Status.IN_PROGRESS));
        model.addAttribute("ordersCompleted", orderRepository.findAllByStatus(Status.COMPLETED));
        model.addAttribute("ordersCanceled", orderRepository.findAllByStatus(Status.CANCELED));
        model.addAttribute("ordersCl", orderRepository.findAllByStatus(Status.CLOSED));

        return "manager";
    }

    @GetMapping(value = "master")
    public String master(Model model) {

        model.addAttribute("ordersByMaster", orderRepository.findAllByStatus(Status.IN_PROGRESS));
        return "master";
    }

    @GetMapping(value = "profile")
    public String profile(Model model) {
        LOG.info("Get profile Page");
        model.addAttribute("currentUser", userService.getCurrentUser());
        LOG.info("addAttribute currentUser" + userService.getCurrentUser());
        model.addAttribute("profileForm", new ProfileForm());
        LOG.info("addAttribute profileForm" + new ProfileForm());

        return "profile";
    }

    @PostMapping(value = "profile")
    public String profile(@ModelAttribute("profileForm") ProfileForm profileForm, Model model) {
        LOG.info("Form {}", profileForm);
        userService.updateUser(profileForm);
        return "redirect:/";
    }

    @GetMapping(value = "user-delete")
    public String profileDelete(@RequestParam(value = "id") Long id) {
        LOG.info("Get user delete controller");

        userService.deleteUser(id);
        LOG.info("deleteUser id" + id);

        return "redirect:/admin";
    }
}
