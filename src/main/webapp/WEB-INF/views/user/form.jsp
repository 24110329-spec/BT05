<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>${user.id == null ? 'Thêm' : 'Sửa'} người dùng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4" style="max-width: 600px;">
    <h3>${user.id == null ? 'Thêm mới' : 'Cập nhật'} người dùng</h3>
    <form:form action="${user.id == null ? '/admin/users/create' : '/admin/users/edit/' + user.id}"
               method="post" modelAttribute="user">
        <div class="mb-3">
            <label for="username" class="form-label">Tên đăng nhập</label>
            <form:input path="username" id="username" class="form-control" required="true"/>
            <form:errors path="username" cssClass="text-danger"/>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Mật khẩu</label>
            <form:password path="password" id="password" class="form-control" required="${user.id == null}"/>
            <form:errors path="password" cssClass="text-danger"/>
            <c:if test="${user.id != null}">
                <small class="text-muted">Để trống nếu không thay đổi</small>
            </c:if>
        </div>
        <div class="mb-3">
            <label for="fullname" class="form-label">Họ tên</label>
            <form:input path="fullname" id="fullname" class="form-control" required="true"/>
            <form:errors path="fullname" cssClass="text-danger"/>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <form:input path="email" id="email" class="form-control" type="email"/>
            <form:errors path="email" cssClass="text-danger"/>
        </div>
        <div class="mb-3">
            <label for="role" class="form-label">Vai trò</label>
            <form:select path="role" id="role" class="form-select">
                <form:option value="ADMIN">ADMIN</form:option>
                <form:option value="USER">USER</form:option>
            </form:select>
        </div>
        <button type="submit" class="btn btn-primary">Lưu</button>
        <a href="/admin/users" class="btn btn-secondary">Hủy</a>
    </form:form>
</div>
</body>
</html>