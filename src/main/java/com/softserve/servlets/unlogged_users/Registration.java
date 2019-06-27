package com.softserve.servlets.unlogged_users;

import com.softserve.dao.impl.UserDAOimpl;
import com.softserve.entities.User;
import com.softserve.services.UserService;
import com.softserve.services.UserServiceImpl;
import com.softserve.util.security.SecurityManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/registration")
public class Registration extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/user/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String phone_number = req.getParameter("phone_number");
        String login = req.getParameter("username");
        String password = req.getParameter("password");

        SecurityManager securityManager = new SecurityManager();
        String passwordHash = securityManager.hashPassword(password);
        UserService userService = new UserServiceImpl();
        User user = new User(name, surname, phone_number, login, passwordHash, "user");

        userService.add(user);
        resp.sendRedirect("/login");

    }

}
