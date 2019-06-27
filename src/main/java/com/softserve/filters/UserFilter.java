package com.softserve.filters;

import com.softserve.util.security.AuthManager;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)req;
        HttpServletResponse response = (HttpServletResponse)resp;

        AuthManager authManager = (AuthManager) request.getAttribute("Auth");

        if(authManager.guest() || authManager.getUser().isAdmin()){
            response.sendRedirect("/home");
        }else {
            chain.doFilter(req,resp);
        }


    }

    @Override
    public void destroy() {

    }
}