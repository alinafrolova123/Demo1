package com.softserve.servlets.logged_users;

import com.softserve.dao.impl.DishDAOimpl;
import com.softserve.dao.impl.User_DishDAOimpl;
import com.softserve.entities.Dish;
import com.softserve.entities.User_Dish;
import com.softserve.util.security.AuthManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/user/menu")
public class UserMenuController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Dish> dishes = DishDAOimpl.getDishes();
        List<Dish> drinks = DishDAOimpl.getDrinks();
        req.getServletContext().setAttribute("dishes", dishes);
        req.getServletContext().setAttribute("drinks", drinks);
        req.getRequestDispatcher("/views/logged_users/logged_menu.jsp").forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Dish item = DishDAOimpl.getById(Integer.parseInt(req.getParameter("id")));
    //    System.out.println(req.getParameter("id"));
        List<Dish> items = (List<Dish>) req.getSession().getAttribute("bin_dishes");
        AuthManager authManager = (AuthManager) req.getAttribute("Auth");
        items.add(item);
        System.out.println(Integer.parseInt(req.getParameter("id")) + " " + authManager.getUser().getIdUser() );
        User_DishDAOimpl.add(authManager.getUser().getIdUser(), Integer.parseInt(req.getParameter("id")));
        req.getRequestDispatcher("/views/logged_users/logged_menu.jsp").forward(req, resp);
    }

}




