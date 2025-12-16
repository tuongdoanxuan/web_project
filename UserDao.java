package vn.edu.nlu.fit.demo.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    private Connection getConnection() throws SQLException {
        throw new UnsupportedOperationException("LỖI: Chưa tích hợp kết nối Database.");
    }

    /**
     * Phương thức 1: Xử lý Đăng nhập
     */
    public User login(String email, String password) {
        String sql = "SELECT id, username, email, password_hash FROM users WHERE email = ? AND password_hash = ?";
        User user = null;

        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, email);
            ps.setString(2, password);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    user = mapResultSetToUser(rs);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    /**
     * Phương thức 2: Lấy thông tin User theo ID (Dùng cho trang account.jsp)
     */
    public User getUserById(int userId) {
        String sql = "SELECT id, username, email, password_hash FROM users WHERE id = ?";
        User user = null;

        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, userId);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    user = mapResultSetToUser(rs);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    /**
     * Phương thức 3: Cập nhật Mật khẩu (Dùng cho ChangePasswordServlet)
     */
    public boolean updatePassword(int userId, String newPasswordHash) {
        String sql = "UPDATE users SET password_hash = ? WHERE id = ?";

        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, newPasswordHash);
            ps.setInt(2, userId);

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * Hàm hỗ trợ: Chuyển dữ liệu từ ResultSet sang đối tượng User
     */
    private User mapResultSetToUser(ResultSet rs) throws SQLException {
        // Trong thực tế, bạn cần map đầy đủ các trường (first_name, last_name, role, etc.)
        return new User(
                rs.getInt("id"),
                rs.getString("username"),
                rs.getString("email"),
                rs.getString("password_hash")
        );
    }
}
