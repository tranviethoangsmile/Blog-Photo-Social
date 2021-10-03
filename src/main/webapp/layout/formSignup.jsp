<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="bg-light p-5 border shadow">
    <!-- Login Form -->
    <div class="alert alert-${alert}" role="alert">
        ${message}
    </div>
    <form method="post" action="<c:url value='/webblogservlet'/>">
        <div class="mb-4">
            <label for="mail">Email: </label>
            <input type="email" id="mail" class="form-control" placeholder="abc@abc.com" name = "userName" required>
        </div>
        <div class="mb-4">
            <label for="password">Mật khẩu: </label>
            <input type="password" id="password" class="form-control" placeholder="Mật khẩu" name="password" required>
        </div>
        <div class="mb-4">
            <label for="re_password">Nhập lại mật khẩu: </label>
            <input type="password" id="re_password" class="form-control" placeholder="Nhập lại mật khẩu" name="repassword" required>
        </div>
        <div class="mb-4">
            <label for="information"> information: </label>
            <input type="text" id="information" class="form-control" placeholder="Giới thiệu về bạn" name="information" required>
        </div>
        <div class="mb-4">
            <label for="birthday">Birthday: </label>
            <input type="date" id="birthday" class="form-control" placeholder="19900630" name="birthday" required>
        </div>
        <div class="mb-4">
            <label for="photo">Ảnh bìa: </label>
            <input type="text" id="photo" class="form-control" placeholder="link ảnh" name="photo" required>
        </div>
        <div class="mb-4">
            <label for="avata">Ảnh đại diện: </label>
            <input type="text" id="avata" class="form-control" placeholder="Link ảnh bìa" name="avata" required>
        </div>
        <input value="signup" name="action" type="hidden">
        <button type="submit" class="btn btn-primary w-100 my-3 shadow">Đăng kí</button>
    </form>
    <!-- Login Form -->
</div>