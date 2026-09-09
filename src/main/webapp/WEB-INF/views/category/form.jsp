<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>${category.id == null ? 'Thêm' : 'Sửa'} danh mục</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4" style="max-width: 600px;">
    <h3>${category.id == null ? 'Thêm mới' : 'Cập nhật'} danh mục</h3>
    <form:form action="${category.id == null ? '/admin/categories/create' : '/admin/categories/edit/' + category.id}"
               method="post" modelAttribute="category">
        <div class="mb-3">
            <label for="name" class="form-label">Tên danh mục</label>
            <form:input path="name" id="name" class="form-control" required="true"/>
            <form:errors path="name" cssClass="text-danger"/>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Mô tả</label>
            <form:textarea path="description" id="description" class="form-control" rows="3"/>
        </div>
        <button type="submit" class="btn btn-primary">Lưu</button>
        <a href="/admin/categories" class="btn btn-secondary">Hủy</a>
    </form:form>
</div>
</body>
</html>