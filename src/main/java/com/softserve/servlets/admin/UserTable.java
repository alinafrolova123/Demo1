package com.softserve.servlets.admin;

import com.softserve.dao.impl.UserDAOimpl;
import com.softserve.entities.Dish;
import com.softserve.entities.User;
import com.softserve.services.UserService;
import com.softserve.services.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/admin/users")
public class UserTable extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List <User> users = UserDAOimpl.getUsers();
        req.getServletContext().setAttribute("users", users);
        req.getRequestDispatcher("/views/admin/user.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserService userService = new UserServiceImpl();
        List<Dish> users = (List<Dish>) req.getAttribute("users");
        System.out.println(Integer.parseInt(req.getParameter("id")));
        userService.delete(Integer.parseInt(req.getParameter("id")));

        req.getRequestDispatcher("/views/admin/user.jsp").forward(req, resp);
    }
}
