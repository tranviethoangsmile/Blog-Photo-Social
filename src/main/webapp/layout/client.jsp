<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en-US" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>watch | Landing, Ecommerce &amp; Business Templatee</title>


    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
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
    <!-- ===============================================-->

    <meta charset="utf-8">
    <link rel="apple-touch-icon" sizes="180x180" href="/file/assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/file/assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/file/assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="/file/assets/img/favicons/favicon.ico">
    <link rel="manifest" href="/file/assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src=".../file/assets/js/jquery.validate.js"></script>
    <!-- ===============================================-->
    <link href="/file/assets/css/theme.css" rel="stylesheet" />
    <link rel='stylesheet' href='https://cdn.rawgit.com/t4t5/sweetalert/v0.2.0/lib/sweet-alert.css'>
    <script src='https://cdn.rawgit.com/t4t5/sweetalert/v0.2.0/lib/sweet-alert.min.js'></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<style>
<%--    --%>
.example button {
    float: left;
    background-color: #4E3E55;
    color: white;
    border: none;
    box-shadow: none;
    font-size: 17px;
    font-weight: 500;
    font-weight: 600;
    border-radius: 3px;
    padding: 15px 35px;
    margin: 26px 5px 0 5px;
    cursor: pointer;
}
.example button:focus{
    outline: none;
}
.example button:hover{
    background-color: #33DE23;
}
.example button:active{
    background-color: #81ccee;
}
<%----%>
    #report_btn {
        margin-left: 80%;
        position: relative;
    }
    #alert {
        position: absolute;
        width: 20%;
        height: 30px;
        margin-left: 500px;
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
        </div>
        <div class="container">
    <img src="${sessionScope.photo}" width="50px" height="50px">
            </div>
        </div>
    </nav>
    <div class="alert alert-${ss}" role="alert">
        ${mess}
    </div>
    <section class="py-0" id="header">
        <div class="bg-holder" style="background-image:url(${sessionScope.photo});background-position:right top;background-size:contain;">
        </div>
        <!--/.bg-holder-->
        <div id="alert">
            <div class="alert alert-${alert}" role="alert">
                ${message}
            </div>
        </div>

        <div class="container">
            <div class="row align-items-center min-vh-75 min-vh-xl-100">
                <div class="col-md-8 col-lg-6 text-md-start text-center">
                    <h1 class="display-1 lh-sm text-uppercase text-light">${sessionScope.infomation}</h1>
                    <div class="pt-4">
                        <a onclick="return confirm('Bạn chắc muốn thoát chứ?');" class="btn btn-sm btn-outline-primary" href="/webblogservlet?action=out">
                            Thoát
                        </a>
                        <button type="button" class="btn btn-sm btn-outline-primary" data-bs-toggle="modal" data-bs-target="#upStory">
                            ĐĂNG ẢNH
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="py-0">
        <button id="report_btn" type="button" class="btn btn-sm btn-outline" data-bs-toggle="modal" data-bs-target="#report">
            Khiếu nại
        </button>
        <button id="reply_btn" type="button" class="btn btn-sm btn-outline" data-bs-toggle="modal" data-bs-target="#reply">
            Tin nhắn
        </button>
    </section>
    <section class="py-0">
        <div class="container">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Content</th>
                    <th scope="col">Time</th>
                    <th scope="col">Photo</th>
                    <th rowspan="2">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="ContenOfUser" items="${sessionScope.ContenOfUser}">
                    <tr>
                        <td><c:out value="${ContenOfUser.getId()}"/></td>
                        <td><c:out value="${ContenOfUser.getConten()}"/></td>
                        <td><c:out value="${ContenOfUser.getTime()}"/></td>
                        <td><img src="<c:out value="${ContenOfUser.getPhoto()}"/>" width="50px" height="50px"></td>
                        <td>
                            <a href="/webblogservlet?action=deleteContenUser&id=${ContenOfUser.getId()}&userName=${sessionScope.userName}" onclick="return confirm('Bạn muốn xoá không?');">
                                <button type="button">DELETE</button>
                            </a>
                            <a href="/webblogservlet?action=edit&id=${ContenOfUser.getId()}&userName=${sessionScope.userName}">
                                <button type="button">EDIT</button>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </section>
<%--    modal begin--%>
    <div class="modal fade" id="upStory" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="title_login" style="color: #0a53be">Đăng bài</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="<c:url value='/webblogservlet'/>" method="post" id="insert">
                        <!-- Name input -->
                        <div class="form-outline mb-4">
                            <input type="hidden" name="id" value="${sessionScope.id}">
                        </div>
                        <div class="form-outline mb-4">
                            <input type="hidden" name="userName" value="${sessionScope.userName}">
                        </div>
                        <!-- Conten input -->
                        <div class="form-outline mb-4">
                            <textarea name="conten" class="form-control" id="conten" rows="4" placeholder="Viết gì đi..." required></textarea>
                        </div>
                        <!-- Link photo -->
                        <div class="form-outline mb-4">
                            <input name="photo" type="text" id="photo" class="form-control" placeholder="dán ảnh ở đây này..." required/>
                        </div>
                        <input value="insertConten" name="action" type="hidden">
                        <!-- Submit button -->
                        <button onclick="return confirm('Bạn muốn kiểm tra lại không?');" type ="submit" class="btn btn-primary btn-block mb-4">Đăng bài</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>
<%--    modal end--%>
</main>



<!-- ===============================================-->
<div class="modal fade" id="reply" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="title_reply" style="color: #0f7a3a">Tin nhắn</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <%@include file="formReplyList.jsp"%>
            </div>
        </div>
    </div>
</div>
<%--===============================================--%>
<div class="modal fade" id="report" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="title_signup" style="color: red">Báo cáo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <%@include file="formReport.jsp"%>
            </div>
        </div>
    </div>
</div>
<%--====================THÔNG BÁO xoá ===========================--%>
<!-- ===============================================-->
<script>
</script>
<%--==================================================--%>
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
