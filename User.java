package vn.edu.nlu.fit.demo.model;

public class User {
    private int id;
    private String username;
    private String email;
    private String passwordHash;

    public User(int id, String username, String email, String passwordHash) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.passwordHash = passwordHash;
    }

    public String getUsername() {
        return username;
    }

    public String getPasswordHash() {
        return passwordHash;
    }

    public boolean checkPassword(String plainPassword) {
        // Giả lập hash đơn giản: Mật khẩu hash là mật khẩu thường
        return this.passwordHash.equals(plainPassword);
    }

    public void setPasswordHash(String newPasswordHash) {
        this.passwordHash = newPasswordHash;
    }
}
