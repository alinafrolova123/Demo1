package com.softserve.servlets.admin;

import com.softserve.dao.impl.EmailDAOimpl;
import com.softserve.entities.Email;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/admin/emails")
public class EmailTable extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Email> emails = EmailDAOimpl.getEmails();
        req.getServletContext().setAttribute("emails", emails);
        req.getRequestDispatcher("/views/admin/emails.jsp").forward(req, resp);
    }
}
