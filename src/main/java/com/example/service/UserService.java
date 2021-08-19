package com.example.service;

import com.example.model.User;
import com.example.repository.UserRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> listAll() {
        return userRepository.findAll();
    }

    public void save(User user) {
        userRepository.save(user);
    }

    public User getUserById(Long id) {
        return userRepository.findById(id).get();
    }

    public void delete(Long id) {
        userRepository.deleteById(id);
    }

    public void editUser(User user, Long id) {
        User editUser = new User(
                id,
                user.getName(),
                user.getSurname(),
                user.getProfile(),
                user.getEmail(),
                user.getPhone(),
                user.getAboutMe()
        );
        userRepository.save(editUser);
    }

}
