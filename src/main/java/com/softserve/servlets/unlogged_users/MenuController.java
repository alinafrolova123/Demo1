package com.softserve.servlets.unlogged_users;

import com.softserve.dao.DishDAO;
import com.softserve.dao.User_DishDAO;
import com.softserve.entities.Dish;
import com.softserve.factory.DAOFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/menu")
public class MenuController extends HttpServlet {

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
}
