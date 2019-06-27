package com.softserve.servlets.unlogged_users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/contact")
public class ContactController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession newSession = req.getSession(false);
        System.out.println(newSession);
        req.getRequestDispatcher("/views/user/contact.jsp").forward(req,resp);
    }
}