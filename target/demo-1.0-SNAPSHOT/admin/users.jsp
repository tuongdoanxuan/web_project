<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Quản Lý Người Dùng | Admin</title>
    <link rel="stylesheet" href="css/admin.css" />
    <link rel="stylesheet" href="css/users.css" />
    <link rel="stylesheet" href="assets/fontawesome/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
</head>

<body>
    <div class="admin-wrapper">
        <!-- Sidebar -->
        <aside class="admin-sidebar">
            <h2 class="logo">Biển Xanh Admin</h2>
            <ul class="admin-menu">
                <li><a href="dashboard.jsp" class="active"><i class="fa-solid fa-chart-line"></i> Tổng quan</a></li>
                <li><a href="products.jsp"><i class="fa-solid fa-boxes-stacked"></i> Sản phẩm</a></li>
                <li><a href="orders.jsp"><i class="fa-solid fa-receipt"></i> Đơn hàng</a></li>
                <li><a href="users.html"><i class="fa-solid fa-users"></i> Người dùng</a></li>
                <li><a href="comment.jsp"><i class="fa-solid fa-comments"></i> Đánh giá của khách hàng</a></li>
                <li><a href="changePassword.jsp"><i class="fa-solid fa-key"></i> Đổi mật khẩu</a></li>
                <li><a href="manageAdmin.jsp"><i class="fa-solid fa-user-shield"></i> Phân quyền</a></li>
                <li><a href="logout.html"><i class="fa-solid fa-right-from-bracket"></i> Thoát admin</a></li>
                <!-- <li><a href="../index.jsp"><i class="fa-solid fa-right-from-bracket"></i> Thoát admin</a></li> (ví dụ muốn về lại trang chủ thì dùng ..)-->

            </ul>
        </aside>

        <!-- Nội dung chính -->
        <main class="admin-content">
            <header class="admin-header">
                <h1>Quản lý người dùng</h1>
                <p>Danh sách tài khoản đã đăng ký</p>
            </header>

            <!-- Tìm kiếm đơn hàng -->
            <div class="order-search">
                <input type="text" id="searchOrder" placeholder="Nhập mã người dùng (VD:U001)" />
                <button onclick=""><i class="fa fa-search"></i> Tìm kiếm</button>
            </div>

            <section class="user-table">
                <table>
                    <thead>
                        <tr>
                            <th><i class="fa-solid fa-id-badge"></i> ID</th>
                            <th><i class="fa-solid fa-user"></i> Họ tên</th>
                            <th><i class="fa-solid fa-envelope"></i> Email</th>
                            <th><i class="fa-solid fa-user-shield"></i> Vai trò</th>
                            <th><i class="fa-solid fa-circle-info"></i> Trạng thái</th>
                            <th><i class="fa-solid fa-gear"></i> Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>U001</td>
                            <td>Nguyễn Văn A</td>
                            <td>nguyena@example.com</td>
                            <td>Khách hàng</td>
                            <td><span class="status active">Hoạt động</span></td>
                            <td>
                                <a href="usersDetail.jsp" class="btn-view" title="Xem chi tiết">
                                    <i class="fa-solid fa-eye"></i>
                                </a>
                                <button class="btn-lock" title="Khóa"><i class="fa-solid fa-lock"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>U002</td>
                            <td>Trần Thị B</td>
                            <td>tranb@example.com</td>
                            <td>Admin</td>
                            <td><span class="status inactive">Bị khóa</span></td>
                            <td>
                                <a href="usersDetail.jsp" class="btn-view" title="Xem chi tiết">
                                    <i class="fa-solid fa-eye"></i>
                                </a>
                                <button class="btn-unlock" title="Mở khóa"><i class="fa-solid fa-unlock"></i></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </section>
        </main>
    </div>
</body>

</html>