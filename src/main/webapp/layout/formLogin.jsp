<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="bg-light p-5 border shadow">
    <!-- Login Form -->
    <form method="post" action="<c:url value='/webblogservlet'/>">
        <div class="mb-4">
            <input type="email" class="form-control" placeholder="abc@abc.com" name="userName" id="email" required>
            <p id="valid_mail"></p>
        </div>
        <div class="mb-4">
            <input type="password" class="form-control" placeholder="Enter Password" name = "password" id="password" required>
            <p id="valid_pass"></p>
        </div>
        <input value="login" name="action" type="hidden">
        <button type="submit" class="btn btn-primary w-100 my-3 shadow">Đăng nhập</button>
        <p class="text-center m-0">Bạn chưa có tài khoản?</p>
        <button type="button" class="btn btn-outline" data-bs-toggle="modal" data-bs-target="#signup">
            ĐĂNG KÍ
        </button>
    </form>
    <!-- Login Form -->
</div>
<%--<script>--%>
<%--    function validate() {--%>
<%--        var email = document.getElementById("email").value;--%>
<%--        var pass = document.getElementById("password").value;--%>
<%--        if(email == "") {--%>
<%--            document.getElementById("valid_mail").innerText = "Tên đăng nhập không được trống."--%>
<%--        }else {--%>
<%--            if(pass == "") {--%>
<%--                document.getElementById("valid_pass").innerText = "Mật khẩu không được trống."--%>
<%--            }--%>
<%--        }--%>
<%--    }--%>

<%--</script>--%>