package com.softserve.servlets.logged_users;

import com.softserve.dao.DishDAO;
import com.softserve.dao.User_DishDAO;
import com.softserve.dao.impl.DishDAOimpl;
import com.softserve.dao.impl.User_DishDAOimpl;
import com.softserve.entities.Dish;
import com.softserve.factory.DAOFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/user/buy")
public class BuyController extends HttpServlet {
    User_DishDAO user_dishDAO;
    DishDAO dishDAO;
    @Override
    public void init() throws ServletException {
        user_dishDAO = DAOFactory.getUser_dishDAO();
        dishDAO = DAOFactory.getDishDAO();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        List<Dish> items = (List<Dish>) session.getAttribute("bin_dishes");
        int bill = user_dishDAO.getBill();
        req.getServletContext().setAttribute("bill", bill);
        req.getRequestDispatcher("/views/logged_users/buy.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        List<Dish> items = (List<Dish>) session.getAttribute("bin_dishes");
        System.out.println(req.getParameter("id"));
        items.remove(dishDAO.getById(Integer.parseInt(req.getParameter("id"))));

        user_dishDAO.delete(Integer.parseInt(req.getParameter("id")));
        resp.sendRedirect("/user/buy");
    }
}
