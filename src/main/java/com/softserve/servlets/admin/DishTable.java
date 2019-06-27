package com.softserve.servlets.admin;

import com.softserve.dao.impl.DishDAOimpl;
import com.softserve.entities.Dish;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/admin/dishes")
public class DishTable extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Dish> dishes = DishDAOimpl.getItems();
        req.getServletContext().setAttribute("dishes", dishes);
        req.getRequestDispatcher("/views/admin/dishes.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String description = req.getParameter("description");
        String price = req.getParameter("price");
        int type = req.getParameter("type").equals("dish")? 1 : 0;

        Dish dish = new Dish(name, description, price, type);
        if (DishDAOimpl.add(dish))
            req.getRequestDispatcher("/views/admin/dishes.jsp").forward(req, resp);

        //  req.getRequestDispatcher("/views/admin/dishes.jsp").forward(req, resp);
    }
}