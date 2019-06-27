package com.softserve.servlets.logged_users;

import com.softserve.dao.impl.DishDAOimpl;
import com.softserve.entities.Dish;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/user/menu")
public class BasketServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Dish> dishes = DishDAOimpl.getDishes();
        List<Dish> drinks = DishDAOimpl.getDrinks();
        req.getServletContext().setAttribute("dishes", dishes);
        req.getServletContext().setAttribute("drinks", drinks);
        Cookie cookie1 = new Cookie("orderDish", req.getParameter("id_dish"));
        Cookie cookie2 = new Cookie("orderDrink", req.getParameter("id_drink"));
        resp.addCookie(cookie1);
        resp.addCookie(cookie2);
        req.getRequestDispatcher("/views/logged_users/logged_menu.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      //  int id = Integer.parseInt(req.getParameter("id"));
        //   Dish dish = DishDAOimpl.getById(id);
       // List<Dish> alldishes = new ArrayList<>();

    //    req.getRequestDispatcher("/views/logged_users/logged_menu.jsp").forward(req, resp);
    }

}




