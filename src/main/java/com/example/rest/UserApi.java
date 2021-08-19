package com.example.rest;

import com.example.model.User;
import com.example.service.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@RestController
public class UserApi {

    private UserService userService;

    public UserApi(UserService userService) {
        this.userService = userService;
    }


    @GetMapping("/user")
    public List<User> getUser(Model model) {
        List<User> usersList = userService.listAll();
        ModelAndView modelAndView = new ModelAndView("about");
        modelAndView.addObject(usersList);
        return usersList;
    }

    @GetMapping("/user/{id}")
    public ResponseEntity<User> getUserById(@PathVariable Long id) {
        Optional<User> wantedUser = userService.listAll().stream().filter(user -> user.getId() == id).findFirst();
        if (wantedUser.isPresent()) {
            return new ResponseEntity<>(wantedUser.get(), HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    @PostMapping("/user")
    public void addUser(@RequestBody User user) {
        userService.save(user);
    }

    @PutMapping("/user/{id}")
    public ResponseEntity<User> updateUser(@RequestBody User user, @PathVariable Long id) {
        Optional<User> oldUser = userService.listAll().stream().filter(o -> o.getId() == id).findFirst();
        if (oldUser.isPresent()) {
            userService.save(user);
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }


    @DeleteMapping("/user/{id}")
    public ResponseEntity<User> removeUser(@PathVariable Long id) {
        Optional<User> first = userService.listAll().stream().filter(user -> user.getId() == id).findFirst();

        if (first.isPresent()) {
            userService.delete(id);
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}
