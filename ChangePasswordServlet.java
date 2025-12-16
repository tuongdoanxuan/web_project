package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/change-password")
public class ChangePasswordServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private User getLoggedInUser(HttpServletRequest request) {
        return new User(1, "Tường", "tuong@example.com", "123456");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");


        String currentPassword = request.getParameter("current_password");
        String newPassword = request.getParameter("new_password");
        String confirmPassword = request.getParameter("confirm_password");

        String message = "";


        User user = getLoggedInUser(request);

        if (user == null) {
            message = "LỖI: Phiên đăng nhập không hợp lệ. Vui lòng đăng nhập lại.";
            response.sendRedirect("login.jsp");
            return;
        }


        try {

            if (!newPassword.equals(confirmPassword)) {
                message = "LỖI: Mật khẩu mới và Xác nhận mật khẩu không khớp.";
            }
            else if (!user.checkPassword(currentPassword)) {
                message = "LỖI: Mật khẩu hiện tại không chính xác.";
            }
            else if (newPassword.length() < 6) {
                message = "LỖI: Mật khẩu mới phải có ít nhất 6 ký tự.";
            }
            else {
                user.setPasswordHash(newPassword);
                message = "THÀNH CÔNG: Mật khẩu đã được thay đổi thành công!";
            }

        } catch (Exception e) {
            e.printStackTrace();
            message = "LỖI HỆ THỐNG: Không thể xử lý yêu cầu đổi mật khẩu.";
        }


        request.getSession().setAttribute("statusMessage", message);
        response.sendRedirect("account.jsp"); // Chuyển hướng về trang thông tin tài khoản
    }
}
