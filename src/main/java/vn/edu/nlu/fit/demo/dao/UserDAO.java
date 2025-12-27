package vn.edu.nlu.fit.demo.dao;

import vn.edu.nlu.fit.demo.model.User;
import vn.edu.nlu.fit.demo.utils.PasswordUtils;

import java.util.List;

public class UserDAO extends BaseDao
{
    private final String QUERY = "SELECT * FROM users ";

    public List<User> getUserInfo()
    {
        return getJdbi().withHandle(handle ->
                handle.createQuery(QUERY)
                        .mapToBean(User.class)
                        .list()
        );
    }

    public User loginEmail(String email, String password)
    {
        List<User> users = getJdbi().withHandle(handle ->
                handle.createQuery(QUERY + "WHERE email = :email")
                        .bind("email", email)
                        .mapToBean(User.class)
                        .list()
        );

        if(users.isEmpty()) return null;

        User user = users.getFirst();

        if(PasswordUtils.verifyPassword(password, user.getHashedPassword(), user.getSalt()))
            return user;

        return null;
    }

    public User loginPhone(String phone, String password)
    {
        List<User> users = getJdbi().withHandle(handle ->
                handle.createQuery(QUERY + "WHERE phone = :phone")
                        .bind("phone", phone)
                        .mapToBean(User.class)
                        .list()
        );

        if(users.isEmpty()) return null;

        User user = users.getFirst();

        if(PasswordUtils.verifyPassword(password, user.getHashedPassword(), user.getSalt()))
            return user;

        return null;
    }

    public boolean updatePassword(int id,String currentPassword ,String newPassword)
    {
        List<User> users = getJdbi().withHandle(handle ->
                handle.createQuery(QUERY + "WHERE id = :id")
                        .bind("id", id)
                        .mapToBean(User.class)
                        .list()
        );

        if(users.isEmpty())
            return false;

        User user = users.getFirst();

        if(!PasswordUtils.verifyPassword(currentPassword, user.getHashedPassword(), user.getSalt()))
            return false;

        String salt = PasswordUtils.generateSalt();
        String hash = PasswordUtils.hashPassword(newPassword, salt);

        return getJdbi().withHandle(handle ->
                handle.createUpdate("UPDATE users SET password = :password, salt = :salt WHERE id = :id")
                        .bind("id", id)
                        .bind("password", hash)
                        .bind("salt", salt)
                        .execute() > 0
        );
    }

    public boolean register(User user)
    {
        return getJdbi().withHandle(handle ->
                handle.createUpdate("""
                            INSERT INTO users (
                              first_name, last_name, email, phone, password, salt, created_at, role
                            ) VALUES (
                              :firstName, :lastName, :email, :phone, :hashedPassword, :salt, :createdDate, 'USER'
                            )
                        """)
                        .bindBean(user)
                        .execute() > 0
        );
    }
    
    public boolean emailExists(String email)
    {
        List<User> users = getJdbi().withHandle(handle ->
                handle.createQuery(QUERY + "WHERE email = :email")
                        .bind("email", email)
                        .mapToBean(User.class)
                        .list()
        );
        return !users.isEmpty();
    }
    
    public boolean updatePasswordByEmail(String email, String hashedPassword, String salt)
    {
        return getJdbi().withHandle(handle ->
                handle.createUpdate("UPDATE users SET password = :password, salt = :salt WHERE email = :email")
                        .bind("email", email)
                        .bind("password", hashedPassword)
                        .bind("salt", salt)
                        .execute() > 0
        );
    }
}
