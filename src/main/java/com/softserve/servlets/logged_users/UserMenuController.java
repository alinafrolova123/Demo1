package com.softserve.servlets.logged_users;

import com.softserve.dao.DishDAO;
import com.softserve.dao.User_DishDAO;
import com.softserve.dao.impl.DishDAOimpl;
import com.softserve.dao.impl.User_DishDAOimpl;
import com.softserve.entities.Dish;
import com.softserve.entities.User_Dish;
import com.softserve.factory.DAOFactory;
import com.softserve.util.security.AuthManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/user/menu")
public class UserMenuController extends HttpServlet {
    DishDAO dishDAO;
    User_DishDAO user_dishDAO;
    @Override
    public void init() throws ServletException {
        dishDAO = DAOFactory.getDishDAO();
        user_dishDAO = DAOFactory.getUser_dishDAO();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Dish> dishes = dishDAO.getDishes();
        List<Dish> drinks = dishDAO.getDrinks();
        req.getServletContext().setAttribute("dishes", dishes);
        req.getServletContext().setAttribute("drinks", drinks);
        req.getRequestDispatcher("/views/logged_users/logged_menu.jsp").forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Dish item = dishDAO.getById(Integer.parseInt(req.getParameter("id")));
        List<Dish> items = (List<Dish>) req.getSession().getAttribute("bin_dishes");
        AuthManager authManager = (AuthManager) req.getAttribute("Auth");
        items.add(item);
        System.out.println(Integer.parseInt(req.getParameter("id")) + " " + authManager.getUser().getIdUser() );
        user_dishDAO.add(authManager.getUser().getIdUser(), Integer.parseInt(req.getParameter("id")));
        req.getRequestDispatcher("/views/logged_users/logged_menu.jsp").forward(req, resp);
    }

}




