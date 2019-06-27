package com.softserve.servlets.admin;

import com.softserve.dao.impl.UserDAOimpl;
import com.softserve.entities.User;

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
}
