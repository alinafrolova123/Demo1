package com.softserve.util.security;

import com.softserve.dao.UserDAO;
import com.softserve.dao.impl.UserDAOimpl;
import com.softserve.entities.Dish;
import com.softserve.entities.User;
import com.softserve.services.UserService;
import com.softserve.services.UserServiceImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class AuthManager {
    private SecurityManager securityManager;
    private UserService userService;

    private User user;
    private HttpSession session;
    private HttpServletRequest httpServletRequest;
    private HttpServletResponse httpServletResponse;

    public AuthManager(HttpSession session, HttpServletResponse response, HttpServletRequest request) {

        this.session = session;
        this.httpServletRequest = request;
        this.httpServletResponse = response;

        this.securityManager = new SecurityManager();
        this.userService = new UserServiceImpl();;

        Object user = this.session.getAttribute("auntificatedUser");

        if (user != null) {
            this.setUser((User) user);
        }

    }

    public boolean tryLogin(String password, String login) {

        User user = userService.getByLogin(login);

        if (user != null && securityManager.checkPass(password, user.getPassword())) {
            this.login(user);
            return true;
        }
        return false;
    }

    public boolean tryRegister(String phone_number, String login) {
        UserDAO userDAO = new UserDAOimpl();
            if (userDAO.getByPhoneNumber(phone_number)!= null || phone_number.isEmpty()||userDAO.getByLogin(login)!= null||login.isEmpty()) {
                return false;
            }
            return true;

    }


    public void login(User user) {
        if (user == null) {
            throw new IllegalArgumentException("User cannot be null");
        }
        this.setUser(user);
        this.session.setAttribute("auntificatedUser", user);
        List <Dish> items = new ArrayList<>();
        int bill = 0;
        this.session.setAttribute("bin_dishes", items);

    }

    public void logout() {
        this.setUser(null);
        this.session.removeAttribute("auntificatedUser");
    }

    public User getUser() {
        return user;
    }

    private void setUser(User user){
        this.user = user;
    }

    public boolean guest() {
        return this.user == null;
    }

}
