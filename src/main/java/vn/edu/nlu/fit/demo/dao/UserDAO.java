package vn.edu.nlu.fit.demo.dao;

import vn.edu.nlu.fit.demo.model.User;

import java.util.List;

public class UserDAO extends BaseDao
{
    public List<User> getUserInfo()
    {
        String query = "SELECT * FROM users";

        return getJdbi().withHandle(handle ->
                handle.createQuery(query)
                        .mapToBean(User.class)
                        .list()
        );
    }
}
