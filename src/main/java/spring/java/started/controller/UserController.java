package spring.java.started.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import spring.java.started.domain.User;
import spring.java.started.repository.UserRepository;
import spring.java.started.service.UserService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;

    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<User> arrUsers = this.userService.getAllUsersByEmail("huytxhe180649@gmail.com");
        System.out.println(arrUsers);
        String test = this.userService.handeHello();
        model.addAttribute("test", test);
        model.addAttribute("huydeptrai", "VIP");
        return "hello";
    }

    @RequestMapping("/admin/user")
    public String getTableUserPage(Model model) {
        model.addAttribute("newUser", new User());
        List<User> listUser = userService.getAllUsers();
        model.addAttribute("listUser", listUser);
        return "/admin/user/table";
    }

    @RequestMapping("/admin/user/table")
    public String getPageContainTable(Model model) {
        return "/admin/user/table";
    }

    @RequestMapping("/admin/user/create")
    public String getUserPage(Model model, @ModelAttribute("newUser") User user) {
        model.addAttribute("newUser", new User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User newUser) {
        System.out.println(" run here " + newUser);
        this.userService.handleSaveUser(newUser);
        return "redirect:/admin/user";
    }

    @RequestMapping("/admin/user/{id}")
    public String showDetailUserPage(Model model, @PathVariable long id) {
        model.addAttribute("id", id);
        User user = this.userService.getUserById(id);
        model.addAttribute("user", user);
        System.out.println("here" + id);
        return "/admin/user/detailuser";
    }

    @RequestMapping("/admin/user/update/{id}")
    public String getUpdatePage(Model model, @PathVariable long id, @ModelAttribute("newUser") User user) {
        model.addAttribute("id", id);
        User userFinded = this.userService.getUserById(id);
        model.addAttribute("user", userFinded);
        return "/admin/user/update";
    }

    @PostMapping("/admin/user/update")
    public String updateUser(Model model, @ModelAttribute("newUser") User user) {
        System.out.println("" + user.getId());
        User currentUser = this.userService.getUserById(user.getId());
        if (currentUser != null) {
            currentUser.setFullName(user.getFullName());
            currentUser.setEmail(user.getEmail());
            currentUser.setPassword(user.getPassword());
            currentUser.setPhone(user.getPhone());
        }
        this.userService.handleSaveUser(currentUser);
        return "redirect:/admin/user";
    }

    @RequestMapping("/admin/user/deleteuser/{id}")
    public String getDeleteUserPage(Model model, @PathVariable long id) {
        model.addAttribute("id", id);
        return "/admin/user/deleteuser";
    }

}

// @RestController
// public class UserController {
// private UserService userService;

// public UserController(UserService userService) {
// this.userService = userService;
// }

// @GetMapping("/")

// public String getHomePage() {
// return this.userService.handeHello();
// }
// }
