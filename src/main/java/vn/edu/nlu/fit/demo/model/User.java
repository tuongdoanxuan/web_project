package vn.edu.nlu.fit.demo.model;

import java.io.Serializable;
import java.sql.Date;

public class User implements Serializable
{
    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String role;
    private String hashedPassword;
    private String salt;
    private Date createdDate;

    public User()
    {
        createdDate = new Date(System.currentTimeMillis());
    }

    public Date getCreatedDate()
    {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate)
    {
        this.createdDate = createdDate;
    }

    public void setHashedPassword(String hashedPassword)
    {
        this.hashedPassword = hashedPassword;
    }

    public void setSalt(String salt)
    {
        this.salt = salt;
    }

    public String getSalt()
    {
        return salt;
    }

    public String getHashedPassword()
    {
        return hashedPassword;
    }

    public int getId()
    {
        return id;
    }

    public String getFirstName()
    {
        return firstName;
    }

    public String getLastName()
    {
        return lastName;
    }

    public String getEmail()
    {
        return email;
    }

    public String getPhone()
    {
        return phone;
    }

    public String getRole()
    {
        return role;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public void setFirstName(String firstName)
    {
        this.firstName = firstName;
    }

    public void setLastName(String lastName)
    {
        this.lastName = lastName;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public void setPhone(String phone)
    {
        this.phone = phone;
    }

    public void setRole(String role)
    {
        this.role = role;
    }

}
