package com.softserve.filters;

import com.softserve.dao.impl.UserDAOimpl;
import com.softserve.entities.Account;
import com.softserve.util.security.AuthManager;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)req;
        HttpServletResponse response = (HttpServletResponse)resp;

        AuthManager authManager = (AuthManager) request.getAttribute("Auth");

        if(authManager.guest() || !authManager.getUser().isAdmin()){
            response.sendRedirect("/home");
        }else{
            chain.doFilter(req,resp);
        }


    }

    @Override
    public void destroy() {

    }
}
