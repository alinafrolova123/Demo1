package com.softserve.servlets.admin;

import com.softserve.dao.impl.DishDAOimpl;
import com.softserve.entities.Dish;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/menu")
public class AdminMenuController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DishDAOimpl dishDAOimpl = new DishDAOimpl();
        List<Dish> dishes = dishDAOimpl.getDishes();
        List<Dish> drinks = dishDAOimpl.getDrinks();
        req.getServletContext().setAttribute("dishes", dishes);
        req.getServletContext().setAttribute("drinks", drinks);

        req.getRequestDispatcher("/views/admin/menu_admin.jsp").forward(req, resp);
    }
}

