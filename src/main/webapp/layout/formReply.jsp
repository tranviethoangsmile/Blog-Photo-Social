<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="bg-light p-5 border shadow">
    <!-- Login Form -->
    <form method="post" action="<c:url value='/webblogservlet'/>">
        <div class="mb-4">
            <input type="number" class="form-control" name="user_id" required>
        </div>
        <div class="mb-4">
            <input type="text" class="form-control" placeholder="Nội dung trả lời" name = "comment" required>
        </div>
        <input value="reply" name="action" type="hidden">
        <button onclick="return confirm('Bạn muốn gửi không?');" type="submit" class="btn btn-primary w-100 my-3 shadow">Gửi</button>
    </form>
    <!-- Login Form -->
</div>

<%--xây dựng bảng reply. cập nhật form mới. tìm kiếm--%>