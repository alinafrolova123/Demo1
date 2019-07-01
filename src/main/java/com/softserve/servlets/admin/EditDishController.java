package com.softserve.servlets.admin;

import com.softserve.dao.impl.DishDAOimpl;
import com.softserve.entities.Dish;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/admin/edit/dish")
public class EditDishController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/views/admin/dishes.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Dish dish = new Dish();
        dish.setName(req.getParameter("dishName"));
        dish.setDescription(req.getParameter("dishDescription"));
        dish.setPrice(req.getParameter("dishPrice"));
        dish.setIdDish(Integer.parseInt(req.getParameter("idDish")));
        DishDAOimpl dishDAOimpl = new DishDAOimpl();
        dishDAOimpl.edit(dish);
        resp.sendRedirect("/admin/dishes");
    }
}
