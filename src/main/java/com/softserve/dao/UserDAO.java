package com.softserve.dao;

import com.softserve.entities.User;

public interface UserDAO {
    boolean add(User user);
    void edit(User user);
    void delete();
    User getByLogin(String login);
}
