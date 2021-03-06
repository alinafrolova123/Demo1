package com.softserve.servlets.logged_users;

import com.softserve.dao.UserDAO;
import com.softserve.dao.impl.UserDAOimpl;
import com.softserve.entities.User;
import com.softserve.util.security.AuthManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/myprofile")
public class EditProfileController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        try {

            getServletContext().getRequestDispatcher("/views/logged_users/myprofile.jsp").forward(request, response);
        } catch (IOException | ServletException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        request.setCharacterEncoding("UTF-8");
        AuthManager authManager = (AuthManager) request.getAttribute("Auth");

        User user = authManager.getUser();
        user.setIdUser(Integer.parseInt(request.getParameter("idUser")));
        user.setName(request.getParameter("name"));
        user.setSurname(request.getParameter("surname"));
        user.setPhone_number(request.getParameter("phone_number"));
        user.setLogin(request.getParameter("login"));
        user.setPassword(request.getParameter("password"));


        UserDAO userDAO = (UserDAO) new UserDAOimpl();
        authManager.login(user);

        userDAO.edit(user);
        response.sendRedirect("/user/myprofile");
    }
}
