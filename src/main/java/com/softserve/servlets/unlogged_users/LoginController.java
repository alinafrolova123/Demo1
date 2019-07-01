package com.softserve.servlets.unlogged_users;

import com.softserve.util.security.AuthManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/user/login.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String login = req.getParameter("login");
        String password = req.getParameter("password");
        AuthManager authManager = (AuthManager) req.getAttribute("Auth");
        if (authManager.tryLogin(password, login)) {
            if (authManager.getUser().isAdmin()) {
                resp.sendRedirect("/admin/home");
            } else {
                resp.sendRedirect("/user/home");
            }
        } else {
            req.setAttribute("error", "Your login or password is not correct");
            req.getRequestDispatcher("/views/user/login.jsp").forward(req, resp);
        }

    }
}
