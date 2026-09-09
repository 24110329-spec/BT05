<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách danh mục</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
    <h2>Quản lý danh mục</h2>
    <div class="d-flex justify-content-between mb-3">
        <form action="/admin/categories" method="get" class="d-flex">
            <input type="text" name="keyword" class="form-control me-2" placeholder="Tìm kiếm..." value="${keyword}">
            <button class="btn btn-outline-primary" type="submit">Tìm</button>
        </form>
        <a href="/admin/categories/create" class="btn btn-success">Thêm mới</a>
    </div>

    <table class="table table-bordered table-hover">
        <thead class="table-light">
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Mô tả</th>
            <th>Ngày tạo</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="cat" items="${categories}">
            <tr>
                <td>${cat.id}</td>
                <td>${cat.name}</td>
                <td>${cat.description}</td>
                <td>${cat.createdAt}</td>
                <td>
                    <a href="/admin/categories/edit/${cat.id}" class="btn btn-sm btn-warning">Sửa</a>
                    <a href="/admin/categories/delete/${cat.id}" class="btn btn-sm btn-danger" onclick="return confirm('Xóa?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/admin/users" class="btn btn-secondary">Quản lý người dùng</a> |
    <a href="/logout" class="btn btn-secondary">Đăng xuất</a>
</div>
</body>
</html>