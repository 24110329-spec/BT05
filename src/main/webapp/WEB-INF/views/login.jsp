<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng nhập</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5" style="max-width: 400px;">
    <h2 class="text-center mb-4">Đăng nhập</h2>
    <form action="/login" method="post" class="border p-4 bg-white rounded shadow-sm">
        <c:if test="${param.error != null}">
            <div class="alert alert-danger">Sai tên đăng nhập hoặc mật khẩu</div>
        </c:if>
        <c:if test="${param.logout != null}">
            <div class="alert alert-info">Bạn đã đăng xuất</div>
        </c:if>
        <div class="mb-3">
            <label for="username" class="form-label">Tên đăng nhập</label>
            <input type="text" name="username" id="username" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Mật khẩu</label>
            <input type="password" name="password" id="password" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Đăng nhập</button>
    </form>
</div>
</body>
</html>