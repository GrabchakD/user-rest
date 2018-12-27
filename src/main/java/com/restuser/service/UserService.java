package com.restuser.service;

import com.restuser.model.User;

import java.util.List;
import java.util.Optional;

public interface UserService {

    User create(User user);

    User update(User user);

    void delete(Long id);

    List<User> getAll();

    Optional<User> getById(Long id);

    Optional<User> getByLogin(String login);
}
