package com.softserve.servlets.logged_users;

import com.softserve.dao.impl.DishDAOimpl;
import com.softserve.entities.Dish;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/user/menu")
public class UserMenuController extends HttpServlet {
    DishDAOimpl dishDAOimpl = new DishDAOimpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Dish> dishes = dishDAOimpl.getDishes();
        List<Dish> drinks = dishDAOimpl.getDrinks();
        req.getServletContext().setAttribute("dishes", dishes);
        req.getServletContext().setAttribute("drinks", drinks);
        req.getRequestDispatcher("/views/logged_users/logged_menu.jsp").forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Dish item = dishDAOimpl.getById(Integer.parseInt(req.getParameter("id")));

        List<Dish> items = (List<Dish>) req.getSession().getAttribute("bin_dishes");
        items.add(item);
        req.getRequestDispatcher("/views/logged_users/logged_menu.jsp").forward(req, resp);
    }

}




