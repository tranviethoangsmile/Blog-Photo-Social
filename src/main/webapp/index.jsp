<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nơi Chia sẽ những khoảnh khắc</title>
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
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        /*** Menu ***/
        #main{
            position:absolute;
            color: white;
            line-height: 17px;
            display:block;
            font-size: 15px;
            margin-left: 70px;
            margin-top: 20px;
            z-index: 20;
            list-style-type: none;
        }
        #main a{
            background-color: #000;
            font-weight: bold;
            letter-spacing: 1px;
            font-family: arial, sans-serif;
            color: #fff;
            text-decoration:none;
            cursor:pointer;

        }

        #main li:nth-child(2){
            width: 114px;
            font-size: 15px;
            letter-spacing: 0px;
            font-family: arial, sans-serif;
            margin-top:2px;
            font-weight: bold;
            background-color:black;

        }

        #main li:first-child{

            font-size:15px;
            letter-spacing: 0px;
            font-weight: bold;

        }
        /*Menu*/
        #main li:last-child{
            margin-top: 2px;
            letter-spacing: 0px;
            font-weight: bold;


        }
        #main li a:hover{
            color: gray;
            text-decoration:none;
        }
        #video_background {
            position: absolute;
            bottom: 0px;
            right: 0px;
            min-width:100%;
            min-height:100%;
            max-height:4000%;
            max-width:1000%;
            width: auto;
            height: auto;
            z-index: -1000;
            overflow: hidden;
        }
        #btn {
            width: 300px ;
            margin: 0px auto;
            margin-top: 30%;
        }

        #group-btn {
            padding: 20px;
        }
    </style>
</head>

<body>
<div class="alert alert-${alert}" role="alert">
    ${message}
</div>
<div class="container">
    <div class="row" id="btn">
    <div id="group-btn">
            <button type="button" class="btn btn-outline" data-bs-toggle="modal" data-bs-target="#login">
                ĐĂNG NHẬP
            </button>
            <button type="button" class="btn btn-outline" data-bs-toggle="modal" data-bs-target="#signup">
                ĐĂNG KÍ
            </button>
        </div>
    </div>

    <video id="video_background" preload="auto" autoplay="true" loop="loop" muted volume="0">
        <source src="video/tunnel_animation.mp4" type="video/mp4"/>
    </video>
</div>

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="login" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="title_login">ĐĂNG NHẬP</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
               <%@include file="layout/formLogin.jsp"%>
            </div>
            </div>
        </div>
    </div>
</div>
<%--modal 2--%>
<div class="modal fade" id="signup" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="title_signup">ĐĂNG KÍ</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <%@include file="layout/formSignup.jsp"%>
            </div>
        </div>
    </div>
</div>
<%--script--%>
<script>

</script>
<%--script--%>
</body>

</html>

