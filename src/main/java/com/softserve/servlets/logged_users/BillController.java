package com.softserve.servlets.logged_users;

import com.softserve.dao.User_DishDAO;
import com.softserve.dao.impl.User_DishDAOimpl;
import com.softserve.entities.Dish;
import com.softserve.factory.DAOFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


@WebServlet("/user/bill")
public class BillController extends HttpServlet {

    User_DishDAO user_dishDAO;
    @Override
    public void init() throws ServletException {
        user_dishDAO = DAOFactory.getUser_dishDAO();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/logged_users/buy.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        List<Dish> items = (List<Dish>) session.getAttribute("bin_dishes");
        items.clear();
        user_dishDAO.deleteAll();
        resp.sendRedirect("/user/buy");
    }
}
