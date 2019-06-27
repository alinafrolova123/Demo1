package com.softserve.services;

import com.softserve.dao.UserDAO;
import com.softserve.dao.impl.UserDAOimpl;
import com.softserve.entities.User;

public class UserServiceImpl implements UserService {

    private UserDAO userDAO;

    public UserServiceImpl() {
        userDAO = (UserDAO) new UserDAOimpl();
    }

    public boolean add(User user) {
        if (user == null) {
            throw new IllegalArgumentException("User cannot be null");
        }
        return userDAO.add(user);
    }


    @Override
    public void edit(User user) {
        if (user == null) {
            throw new IllegalArgumentException("User cannot be null");
        }
        userDAO.edit(user);
    }


    @Override
    public void delete(int id) {
        if (id <= 0) {
            throw new IllegalArgumentException("User cannot be null");
        }
        userDAO.delete();
    }

    @Override
    public User getByLogin(String login) {
        if (login == null || login.isEmpty()) {
            throw new IllegalArgumentException("User cannot be null");
        }
        return userDAO.getByLogin(login);
    }

}



