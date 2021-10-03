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
<%--    sweet--%>
    <link rel='stylesheet' href='https://cdn.rawgit.com/t4t5/sweetalert/v0.2.0/lib/sweet-alert.css'>
    <script src='https://cdn.rawgit.com/t4t5/sweetalert/v0.2.0/lib/sweet-alert.min.js'></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<%--    --%>


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
</style>

<body>
<!-- ===============================================-->
<!--    Main Content-->
<!-- ===============================================-->
<main class="main" id="top">
    <nav id="nav" class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <img src="${sessionScope.photo}" width="50px" height="50px">
            <div class="collapse navbar-collapse" id="navbarNav">

                <ul class="navbar-nav">
                    <li class="nav-item">
                        <button type="button" class="btn btn-outline" data-bs-toggle="modal" data-bs-target="#user">
                            NGƯỜI DÙNG
                        </button>
                    </li>
                    <li class="nav-item">
                        <button type="button" class="btn btn-outline" data-bs-toggle="modal" data-bs-target="#conten">
                            BÀI VIẾT
                        </button>
                    </li>
                    <li class="nav-item">
                        <button type="button" class="btn btn-outline" data-bs-toggle="modal" data-bs-target="#report">
                            BÁO CÁO
                        </button>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
    <section class="py-0" id="header">
        <div class="bg-holder" style="background-image:url(${sessionScope.photo});background-position:right top;background-size:contain;">
        </div>
        <!--/.bg-holder-->
        <div class="alert alert-${alert}" role="alert">
            ${message}
        </div>
        <div class="container">
            <div class="row align-items-center min-vh-75 min-vh-xl-100">
                <div class="col-md-8 col-lg-6 text-md-start text-center">
                    <h1 class="display-1 lh-sm text-uppercase text-light">${sessionScope.infomation}</h1>
                    <div class="pt-4"><a class="btn btn-sm btn-outline-primary" href="/webblogservlet?action=out" onclick="return confirm('Bạn chắc muốn thoát chứ?');">Thoát</a>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <%--    modal begin--%>


    <%--    modal end--%>
</main>



<!-- ===============================================-->
<!-- Modal -->
<div class="modal fade" id="user" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="title_login" style="color: #0c622e">DANH SÁCH NGƯỜI DÙNG</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <%@include file="formUserList.jsp"%>
            </div>
        </div>
    </div>
</div>


<%--modal 2--%>
<div class="modal fade" id="conten" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="title_signup" style="color: #0c622e">DANH SÁCH BÀI VIẾT</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <%@include file="formContenList.jsp"%>
            </div>
        </div>
    </div>
</div>
<%--modal 3--%>
<div class="modal fade" id="report" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="title_report" style="color: #0c622e">DANH SÁCH YÊU CẦU</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <%@include file="formReportList.jsp"%>
            </div>
        </div>
    </div>
</div>

<!-- ===============================================-->
<!--    End of Main Content-->
<!-- ===============================================-->
<%--Form reply--%>
<div class="modal fade" id="reply" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="title_Rep">Trả lời người dùng</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <%@include file="formReply.jsp"%>
            </div>
        </div>
    </div>
</div>

<%--===============================================--%>
<script>
    function changerColor() {
        document.getElementById("${users.getUserName()}").style.backgroundColor = "red";
    }
</script>
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
