package vn.edu.nlu.fit.demo.services;

import vn.edu.nlu.fit.demo.dao.UserDAO;
import vn.edu.nlu.fit.demo.model.User;

import java.util.List;

public class UserService
{
    private static UserService instance;
    private final UserDAO dao;

    private UserService() {
        dao = new UserDAO();
    }

    public static UserService getInstance()
    {
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }

    public List<User> getUserInfos()
    {
        return dao.getUserInfo();
    }
}
