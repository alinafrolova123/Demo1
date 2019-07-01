package com.softserve.servlets.admin;

import com.softserve.dao.DishDAO;
import com.softserve.dao.impl.DishDAOimpl;
import com.softserve.entities.Dish;
import com.softserve.factory.DAOFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.List;

@WebServlet("/admin/dishes")
public class DishTable extends HttpServlet {
    DishDAO dishDAO;
    @Override
    public void init() throws ServletException {
        dishDAO = DAOFactory.getDishDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Dish> dishes = dishDAO.getItems();
        req.getServletContext().setAttribute("dishes", dishes);
        req.getRequestDispatcher("/views/admin/dishes.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Dish dish = new Dish(req.getParameter("name"), req.getParameter("description"),
                req.getParameter("price"), req.getParameter("type").equals("dish") ? 1 : 0);
        dishDAO.add(dish);
        resp.sendRedirect("/admin/dishes");

    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        dishDAO.delete(Integer.parseInt(req.getParameter("id")));
        req.getRequestDispatcher("/views/admin/dishes.jsp").forward(req, resp);
    }

}