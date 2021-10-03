<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en-US" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>watch | Landing, Ecommerce &amp; Business Templatee</title>
    <link rel="apple-touch-icon" sizes="180x180" href="/file/assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/file/assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/file/assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="/file/assets/img/favicons/favicon.ico">
    <link rel="manifest" href="/file/assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="../jquery.validate.min.js"></script>
    <script type="text/javascript" src="../jquery.validate.js"></script>
    <link href="/file/assets/css/theme.css" rel="stylesheet" />

</head>
<style>
    .table {
        width: 30%;
        height: 150px;
        margin: auto;
        margin-top: 25%;
    }
</style>


<body>

<!-- ===============================================-->
<!--    Main Content-->
<!-- ===============================================-->
<main class="main" id="top">
    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3 d-block" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand d-inline-flex" href="/webblogservlet?action=showHome"><span class="text-light fs-2 fw-bold ms-2">TRANG CHỦ</span></a>
            <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            </div>
            <a href="layout/client.jsp"> <img src="${sessionScope.photo}" width="50px" height="50px"/>  </a>
        </div>
    </nav>
</main>
    <!--/.bg-holder-->
    <div class="table">
            <form method="post">
                <div class="mb-4">
                    <input type="hidden" class="form-control" value="${user.getUserName()}" name="userName" required>
                </div>
                <div class="mb-4">
                    <input type="hidden" class="form-control" value="${conten.getId()}" name="id" required>
                </div>
                <div class="mb-4">
                    <input type="text" class="form-control" value="${conten.getConten()}" name="conten"  required>
                </div>
                <div class="mb-4">
                    <input type="text" class="form-control" value="${conten.getPhoto()}"  name="photo" required>
                </div>
                <input value="save" name="action" type="hidden">
                <button  onclick="return confirm('Bạn muốn kiểm tra lại không?');" type="submit" class="btn btn-primary w-100 my-3 shadow">Lưu lại</button>
            </form>
    </div>




<!-- ===============================================-->
<!--    JavaScripts-->
<!-- ===============================================-->

<script src=".../file/vendors/@popperjs/popper.min.js"></script>
<script src=".../file/vendors/bootstrap/bootstrap.min.js"></script>
<script src=".../file/vendors/is/is.min.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
<script src=".../file/vendors/feather-icons/feather.min.js"></script>
<script>
    feather.replace();
</script>
<script src=".../file/assets/js/theme.js"></script>

<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;700&amp;display=swap" rel="stylesheet">
</body>

</html>
