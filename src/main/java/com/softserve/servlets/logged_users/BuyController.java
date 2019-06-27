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

@WebServlet("/user/buy")
public class BuyController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/logged_users/buy.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Dish> dishes = new ArrayList<>();
        List<Dish> drinks = new ArrayList<>();
        Cookie ck[]=req.getCookies();
        for(Cookie i: ck){
            if(i.getValue().equals("id_dish"))
            dishes.add(DishDAOimpl.getById(Integer.parseInt(i.getValue())));
            else
                drinks.add(DishDAOimpl.getById(Integer.parseInt(i.getValue())));
        //    System.out.println(DishDAOimpl.getById(Integer.parseInt(i.getValue())));
        }
        req.getServletContext().setAttribute("dishes", dishes);
        req.getServletContext().setAttribute("drinks", drinks);
        req.getRequestDispatcher("/views/logged_users/buy.jsp").forward(req, resp);
    }
}
