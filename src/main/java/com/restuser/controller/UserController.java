package com.restuser.controller;

import com.restuser.model.User;
import com.restuser.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Optional;

@Controller
public class UserController {

    @Autowired
    private UserService service;

    @ModelAttribute("user")
    public User construct() {
        return new User();
    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String getAll(Model model) {

        model.addAttribute("userList", service.getAll());

        return "users";
    }

    @RequestMapping(value = "/user/{id}", method = RequestMethod.GET)
    public String getUser(@PathVariable Long id, Model model) {
        Optional<User> user = service.getById(id);

        model.addAttribute("user", user);

        return "userInfo";
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.GET)
    public String addUser(Model model) {
        return "addUser";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("name") User user) {

        service.create(user);

        return "redirect:/users";
    }

    @RequestMapping(value = "/users/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable Long id) {

        service.delete(id);

        return "redirect:/users";
    }

    /*
    @RequestMapping(value = "/updateUser/{user.id}", method = RequestMethod.GET)
    public String updateUserForm(@ModelAttribute("name") User user) {
        service.getByLogin(user.getLogin())
                .map(u -> { user.setId(u.getId()); return user; })
                .map(service::update)
                .map(ResponseEntity::ok)
                .orElseGet(ResponseEntity.notFound():: build);

        return "updateUser";
    }

    @RequestMapping(value = "/updateU/{user.id}", method = RequestMethod.PUT)
    public String updateUser(@ModelAttribute("name") User user) {
        service.getByLogin(user.getLogin())
                .map(u -> { user.setId(u.getId()); return user; })
                .map(service::update)
                .map(ResponseEntity::ok)
                .orElseGet(ResponseEntity.notFound():: build);

        return "redirect:/users";
    }
    */

}
