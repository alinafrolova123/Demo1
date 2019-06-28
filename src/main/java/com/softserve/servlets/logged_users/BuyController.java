package com.softserve.servlets.logged_users;

import com.softserve.dao.impl.DishDAOimpl;
import com.softserve.entities.Dish;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/user/buy")
public class BuyController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/logged_users/buy.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        List<Dish> items = (List<Dish>) session.getAttribute("bin_dishes");
        items.remove(DishDAOimpl.getById(Integer.parseInt(req.getParameter("id"))));

        System.out.print(items.size());
        req.getRequestDispatcher("/views/logged_users/buy.jsp").forward(req, resp);
    }
}
