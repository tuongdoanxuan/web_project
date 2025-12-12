<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chi Tiết Đơn Hàng | Admin</title>
    <link rel="stylesheet" href="css/ordersDetail.css" />
    <link rel="stylesheet" href="css/admin.css">
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
                <li><a href="users.jsp"><i class="fa-solid fa-users"></i> Người dùng</a></li>
                <li><a href="comment.jsp"><i class="fa-solid fa-comments"></i> Đánh giá của khách hàng</a></li>
                <li><a href="changePassword.jsp"><i class="fa-solid fa-key"></i> Đổi mật khẩu</a></li>
                <li><a href="manageAdmin.jsp"><i class="fa-solid fa-user-shield"></i> Phân quyền</a></li>
                <li><a href="logout.html"><i class="fa-solid fa-right-from-bracket"></i> Thoát admin</a></li>
            </ul>
        </aside>

        <!-- Nội dung chính -->
        <main class="admin-content">
            <header class="admin-header">
                <h1>Chi tiết đơn hàng <span class="order-code">#DH001</span></h1>
                <p>Thông tin đầy đủ về đơn hàng của <strong>Nguyễn Văn A</strong></p>
            </header>

            <section class="order-detail">
                <div class="info-box">
                    <h3><i class="fa-solid fa-user"></i> Khách hàng</h3>
                    <ul>
                        <li><strong>Họ tên:</strong> Nguyễn Văn A</li>
                        <li><strong>SĐT:</strong> 0901234567</li>
                        <li><strong>Địa chỉ:</strong> 123 Đường Biển, TP. Hồ Chí Minh</li>
                    </ul>
                </div>

                <div class="info-box">
                    <h3><i class="fa-solid fa-file-lines"></i> Đơn hàng</h3>
                    <ul>
                        <li><strong>Ngày đặt:</strong> 08/11/2025</li>
                        <li><strong>Trạng thái:</strong> <span class="status delivered">Đã giao</span></li>
                        <li><strong>Ghi chú:</strong> Giao hàng trước 18h</li>
                    </ul>
                </div>
            </section>

            <section class="order-items">
                <h3><i class="fa-solid fa-box"></i> Sản phẩm đã đặt</h3>
                <table>
                    <thead>
                        <tr>
                            <th>Tên sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Đơn giá</th>
                            <th>Thành tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Tôm Sú Tươi 500g</td>
                            <td>2</td>
                            <td>145.000₫</td>
                            <td>290.000₫</td>
                        </tr>
                        <tr>
                            <td>Mực Nang 300g</td>
                            <td>1</td>
                            <td>75.000₫</td>
                            <td>75.000₫</td>
                        </tr>
                    </tbody>
                </table>
                <div class="total">
                     <button class="btn-cancel"><i class="fa-solid fa-ban"></i> Hủy đơn hàng</button>
                    <strong>Tổng cộng: 365.000₫</strong>
                </div>
            </section>
        </main>
    </div>
</body>

</html>