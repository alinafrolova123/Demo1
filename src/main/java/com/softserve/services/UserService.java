package com.softserve.services;

import com.softserve.entities.User;

public interface UserService {
    boolean add(User user);
    void edit(User user);
    void delete(int id);
    User getByLogin(String login);
}
