package spring.java.started.service;

import java.util.List;

import org.springframework.stereotype.Service;

import spring.java.started.domain.User;
import spring.java.started.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public String handeHello() {
        return "Hello From Service";
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

    public List<User> getAllUsers() {
        return (List<User>) this.userRepository.findAll();
    }

    public List<User> getAllUsersByEmail(String email) {
        return (List<User>) this.userRepository.findByEmail(email);
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public void deleteUserById(long id) {
        this.userRepository.deleteById(id);
    }
}
