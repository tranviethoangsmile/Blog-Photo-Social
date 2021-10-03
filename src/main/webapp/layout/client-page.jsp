
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


    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="/file/assets/css/theme.css" rel="stylesheet" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>


<body>

<!-- ===============================================-->
<!--    Main Content-->
<!-- ===============================================-->
<main class="main" id="top">
    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3 d-block" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand d-inline-flex" href="#"><span class="text-light fs-2 fw-bold ms-2">TRANG CHỦ</span></a>
            <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            </div>
        </div>
    </nav>
    <section class="py-0" id="header">
        <div class="bg-holder" style="background-image:url(data:image/jpeg;base64,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);background-position:right top;background-size:contain;">
        </div>
        <!--/.bg-holder-->

        <div class="container">
            <div class="row align-items-center min-vh-75 min-vh-xl-100">
                <div class="col-md-8 col-lg-6 text-md-start text-center">
                    <h1 class="display-1 lh-sm text-uppercase text-light">Custom Watches For <br class="d-none d-xxl-block" /> Any Occasion</h1>
                    <div class="pt-4"><a class="btn btn-sm btn-outline-primary me-3" href="#">DESIGN &amp; ORDER</a><a class="btn btn-sm btn-outline-primary" href="#">REQUEST VIRTUAL</a></div>
                </div>
            </div>
        </div>
    </section>









</main>
<!-- ===============================================-->
<!--    End of Main Content-->
<!-- ===============================================-->




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

