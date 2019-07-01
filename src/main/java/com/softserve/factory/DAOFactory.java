package com.softserve.factory;

import com.softserve.dao.impl.DishDAOimpl;
import com.softserve.dao.impl.EmailDAOimpl;
import com.softserve.dao.impl.User_DishDAOimpl;

public class DAOFactory {
    private static DishDAOimpl dishDAO;
    private static EmailDAOimpl emailDAO;
    private static User_DishDAOimpl user_dishDAO;

    static {
        dishDAO = new DishDAOimpl();
        emailDAO = new EmailDAOimpl();
        user_dishDAO = new User_DishDAOimpl();
    }

    public static synchronized DishDAOimpl getDishDAO() {
        return dishDAO;
    }

    public static synchronized EmailDAOimpl getEmailDAO() {
        return emailDAO;
    }

    public static  synchronized User_DishDAOimpl getUser_dishDAO() {
        return user_dishDAO;
    }


}
