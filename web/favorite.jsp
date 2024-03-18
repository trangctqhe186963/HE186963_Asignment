
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.css" integrity="sha512-HHsOC+h3najWR7OKiGZtfhFIEzg5VRIPde0kB0bG2QRidTQqf+sbfcxCTB16AcFB93xMjnBIKE29/MjdzXE+qw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300i,400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet" />
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>



        <title>Favorite</title>
    </head>


    <body style="background-color: #0d1318">



        <nav class="navbar navbar-light p-0" style="z-index: 10;">
            <div class="container-fluid px-5">

                <a class="navbar-brand" href="home" style="height: 100px;"><img style="height: 100%" src="images/image-removebg.png" alt="logo"/></a>
                <ul id="main-menu" class="d-flex" style="list-style: none;">
                    <li><a style="font-size: 19px" href="home" >Trang chủ</a></li>
                    <li><a style="font-size: 19px" href="">Thể loại</a>
                        <ul class="sub-menu" style="z-index: 2">

                            <c:forEach items="${sessionScope.genre}" var="g" >
                                <li><a style="font-size: 13px" href="list?cate=${g.name}">${g.getName()}</a></li>

                            </c:forEach>                            
                        </ul>
                    </li>
                    <li><a style="font-size: 19px" href="favorite">Yêu thích</a></li>
                    <li><a style="font-size: 19px" href="support">Hỗ trợ</a></li>
                </ul>
                <span class="d-flex header-search">
                    <style>
                        #search{
                            background: #fff;
                            padding-left: 0px;
                            border-radius: 30px;
                            margin:0px 0px;
                        }
                        #search #txt {
                            border: none;
                            outline: none;
                            background: none;
                            width: 0;
                            padding-left: 0px;
                            margin: 0px -26px;
                            transition: all 0.25s ease-in-out;
                        }
                        #search #search-btn{
                            background-color: #fff;
                            cursor: pointer;
                            border: none;
                            padding: 8px 12px;
                            border-radius: 50%;
                        }

                        #search:hover #txt,#search #txt:valid{
                            width: 300px;
                            padding: 0px 40px;
                        }
                        #searchad{
                            background: #fff;
                            padding-left: 0px;
                            border-radius: 30px;
                            margin:0px 0px;
                        }
                        #searchad #txt {
                            border: none;
                            /*outline: none;*/
                            width: 300px;
                            padding: 0px 22px;
                            background: none;
                            /*width: 0;*/
                            /*padding-left: 0px;*/
                            /*margin: 0px -26px;*/
                            transition: all 0.25s ease-in-out;
                        }
                        #searchad #search-btn{
                            background-color: #fff;
                            cursor: pointer;
                            border: none;
                            padding: 8px 12px;
                            border-radius: 50%;
                        }

                        /*                        #searchad:hover #txt,#search #txt:valid{
                                                    width: 300px;
                                                    padding: 0px 40px;
                                                }*/

                    </style>


                    <c:if test="${sessionScope.user==null}">
                        <form action="search" method="" id="search">

                            <input type="text" name="search" id="txt" placeholder="Tìm gì cũng có :33" required="Nhập đi rồi tìm :<<<" />
                            <button id="search-btn">
                                <i class="fa-solid fa-magnifying-glass"></i></i></button>
                        </form>
                        <a href="register" class="btn top-sign-up button" style="text-decoration: none ;   ">Đăng Kí</a>
                        <a href="login" class="btn top-sign-up button" style="text-decoration: none ;">Đăng Nhập</a>
                    </c:if>

                    <c:if test="${sessionScope.role==0}">
                        <ul id="main-menu" class="d-flex" style="list-style: none;">

                            <li><form action="search" method="" id="search">

                                    <input type="text" name="search" id="txt" placeholder="Tìm gì cũng có :33" required="Nhập đi rồi tìm :<<<" />
                                    <button id="search-btn">
                                        <i class="fa-solid fa-magnifying-glass"></i></i></button>
                                </form></li>

                            <li><a style="font-size: 19px" href=""></a>
                                <ul class="sub-menu" style="z-index: 2">

                                    <li><a style="font-size: 15px" href="profile">Hồ Sơ</a></li>
                                    <li><a style="font-size: 15px" href="logout">Đăng Xuất</a></li>


                                </ul>
                            </li>

                        </ul>
                    </c:if>
                    <c:if test="${sessionScope.role==1}">
                        <ul id="main-menu" class="d-flex" style="list-style: none;">

                            <li><form action="search" method="" id="search">

                                    <input type="text" name="search" id="txt" placeholder="Tìm gì cũng có :33" required="Nhập đi rồi tìm :<<<" />
                                    <button id="search-btn">
                                        <i class="fa-solid fa-magnifying-glass"></i></i></button>
                                </form></li>

                            <li><a style="font-size: 19px" href=""></a>
                                <ul class="sub-menu" style="z-index: 2">

                                    <li><a style="font-size: 15px" href="profile">Hồ Sơ</a></li>
                                    <li><a style="font-size: 15px" href="logout">Đăng Xuất</a></li>
                                    <li><a style="font-size: 15px" href="listad">Quản Lý Phim</a></li>
                                    <li><a style="font-size: 15px" href="listcate">Category</a></li>
                                    <li><a style="font-size: 15px" href="listdirect">Directors</a></li>
                                    <li><a style="font-size: 15px" href="listprodu">Producers</a></li>
                                    <li><a style="font-size: 15px" href="liststar">Actor</a></li>


                                </ul>
                            </li>

                        </ul>
                    </c:if>
                </span>

            </div>
        </nav>


        <style>
            @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap');
            *{
                padding: 0;
                margin: 0;
            }

            #wrapper{
                max-width: 1800px;
                margin: 0 auto;
            }
            body{
                font-family: 'Open Sans',sans-serif;
                font-size: 14px;
                line-height: 1.15;
                color: #fff;
            }
            h2{
                font-size: 22px;
                color: #bebebe;
                padding-top: 120px;
                padding-left: 44px;
                font-weight: 900;
            }

            .products{
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                list-style: none;

            }
            .products li{
                flex-basis: 20%;
                padding-top: 0px;
                padding-left: 0px;
                padding-right: 0px;
                margin-bottom: 33px;
                box-sizing: border-box;
                scale:95%;
                transition: 0.25s ease-in-out;
            }

            .products li img{
                border-radius: 10px;
                max-width: 100%;
                height: auto;
                /*box-shadow: 0 0 0 0 black;*/
            }

            .products li .product-top .txt{
                /*color: red;*/
                padding-left: 22px;
                display: none;

            }
            .products li .product-top .product-thumb img{
                display: block;
            }

            .products li .product-top .product-thumb{
                display: block;
            }
            .products li .product-top{
                position: relative;
            }

            .products li:hover {
                scale:130%;
                z-index: 10;
            }
            .products li:hover img{
                /*                opacity: 0.7;*/
                filter: brightness(80%);
                /*filter: drop-shadow(10px 10px 10px red);*/
            }

            .products li:hover .txt {
                display: inline;
            }
            .products li:hover .bx {
                display: inline;
            }
            .play:hover .bx-play{
                color: #0a75ff;
            }
            .ph:hover i {
                scale:100%;
                color: #fff;

            }
            .bx{
                display: none;
            }
            .ph i {
                scale:80%;
            }

        </style>

        <div id="wrapper" style="background-color: #0d1318">
            <div class="headline">

                <h2>Phim Yêu Thích</h2>
                <ul class="products">
                    <c:forEach items="${requestScope.movies}" var="m">
                        <li>

                            <div class="product-item">
                                <div class="product-top">
                                    <a href="" class="product-thumb"> 
                                        <img src="${m.backdrop}" ><!-- comment -->
                                    </a>
                                    <!--Hover-->
                                    <h3 class="txt" style="font-size: 22px;position: absolute;bottom: 15px ">${m.title}</h3>
                                    <h4 class="txt" style="font-size: 16px;position: absolute;bottom: -5px;">${m.runtime} phút</h4>
                                    <a class="play" href="product?ID=${m.id}" style="color: #fff" >
                                        <i class="bx bx-play"  style="font-size: 33px;position: absolute;bottom: 43%;left:46%"></i>
                                        <i class="bx bx-circle"  style="font-size: 55px;font-weight: lighter;position: absolute;bottom: 39%;left:150px"></i></a>
                                    <a href="trailer.jsp" class="ph" style="color: #cccccc">
                                        <i class="bx bx-movie-play "  style="font-size: 38px;font-weight: lighter;scale:80%;position: absolute;bottom: 43%;left:25%"></i>

                                    </a>
                                    <a href="addfavorite?ID=${m.id}&cate=${cate}&search=${search}&favorite=1"  class="ph" style="color: #cccccc">
                                        <i class="bx bx-heart "  style="font-size: 38px;font-weight: lighter;scale:80%;position: absolute;bottom: 43%;right: 25%"></i>
                                        <i class="bx bxs-heart "  style="font-size: 38px;font-weight: lighter;scale:80%;position: absolute;bottom: 43%;right: 25%"></i>

                                    </a>


                                    <i class="bx bx-dots-vertical-rounded"  style="font-size: 22px;font-weight: lighter;position: absolute;bottom: 47%;left:35%"></i>
                                    <i class="bx bx-dots-vertical-rounded"  style="font-size: 22px;font-weight: lighter;position: absolute;bottom: 47%;right:35%"></i>
                                </div>

                            </div>
                        </li>
                    </c:forEach>

                </ul>


            </div>
        </div>






        <footer style="background-color: #0d1318">
            <div class="container">
                <ul>
                    <li class="ps-2 pb-3">Questions? Call <a href="#">0353500354</a><br><!-- comment -->
                        Mail: <a href="#">caotrang7141@gmail.com</a>
                    </li>

                </ul>
                <div class="row">
                    <div class="col-md-3 col-6">
                        <ul>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">Investor Relations</a></li>
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Speed Test</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 col-6">
                        <ul>
                            <li>An active item</a></li>
                            <li><a href="#">Help Centre</a></li>
                            <li><a href="#">Jobs</a></li>
                            <li><a href="#">Cookie Preferences</a></li>
                            <li><a href="#">Legal Notices</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 col-6">
                        <ul>
                            <li><a href="#">Account</a></li>
                            <li><a href="#">Ways to Watch</a></li>
                            <li><a href="#">Corporate Information</a></li>
                            <li><a href="#">CINEMO Originals</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 col-6">
                        <ul>
                            <li><a href="#">Media Centre</a></li>
                            <li><a href="#">Terms of Use</a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>


        </footer>
        <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                //tim tat ca cac li co sub menu va them vao no class has child
                $('.sub-menu').parent('li').addClass('has-child');
            });
        </script>

        <script>
            $(document).ready(function () {
                $(".image-slider").slick({
                    slidesToShow: 5,
                    slidesToScroll: 5,
                    infinite: true,
                    arrows: true,
                    draggable: true,
                    //                    prevArrow: none,
                    prevArrow: `<button type='button' class='slick-prev slick-arrow'><ion-icon name="arrow-back-outline"></ion-icon></button>`,
                    nextArrow: `<button type='button' class='slick-next slick-arrow'><ion-icon name="arrow-forward-outline"></ion-icon></button>`,

                    dots: true,
                    responsive: [
                        {
                            breakpoint: 1025,
                            settings: {
                                slidesToShow: 3,
                            },
                        },
                        {
                            breakpoint: 480,
                            settings: {
                                slidesToShow: 1,
                                arrows: false,
                                infinite: false,
                            },
                        },
                    ],
                    //                    autoplay: true,
                    //                    autoplaySpeed: 3000,
                });
            });

            $(document).ready(function () {
                $(".image-slider2").slick({
                    slidesToShow: 10,
                    slidesToScroll: 10,
                    infinite: true,
                    arrows: true,
                    draggable: true,
                    prevArrow: `<button type='button' class='slick-prev slick-arrow'><ion-icon name="arrow-back-outline"></ion-icon></button>`,
                    nextArrow: `<button type='button' class='slick-next slick-arrow'><ion-icon name="arrow-forward-outline"></ion-icon></button>`,

                    dots: true,
                    responsive: [
                        {
                            breakpoint: 1025,
                            settings: {
                                slidesToShow: 3,
                            },
                        },
                        {
                            breakpoint: 480,
                            settings: {
                                slidesToShow: 1,
                                arrows: false,
                                infinite: false,
                            },
                        },
                    ],
                    // autoplay: true,
                    // autoplaySpeed: 1000,
                });
            });
        </script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
    </body>
</html>
