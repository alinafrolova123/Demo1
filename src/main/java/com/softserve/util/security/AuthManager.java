package com.softserve.util.security;

import com.softserve.entities.User;
import com.softserve.services.UserService;
import com.softserve.services.UserServiceImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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


    public void login(User user) {
        if (user == null) {
            throw new IllegalArgumentException("User cannot be null");
        }
        this.setUser(user);
        this.session.setAttribute("auntificatedUser", user);
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


    public void setSecurityManager(SecurityManager securityManager) {
        this.securityManager = securityManager;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public void setSession(HttpSession session) {
        this.session = session;
    }

    public void setHttpServletRequest(HttpServletRequest httpServletRequest) {
        this.httpServletRequest = httpServletRequest;
    }

    public void setHttpServletResponse(HttpServletResponse httpServletResponse) {
        this.httpServletResponse = httpServletResponse;
    }

}
