<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>

	<link rel="website icon" href="img/website.ico">
	<link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/navbar-top-fixed.css" rel="stylesheet" />
    <link href="css/carousel.css" rel="stylesheet" />
    <link href="css/album.css" rel="stylesheet">
    <link href="css/sticky-footer-navbar.css" rel="stylesheet">
</head>
<body>
    <!-- 导航条 -->
    <%@ include file="navbar.jsp" %>
    
    <!-- 轮播图 -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/slide/slide1.png">
                <div class="container">
                    <div class="carousel-caption texts-left">
                        <p><a class="btn btn-lg btn-primary" href="#" role="button">立即前往</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img src="img/slide/slide2.jpg">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>2.</h1>
                        <!--<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>-->
                        <!--<p><a class="btn btn-lg btn-primary" href="#" role="button" style="background-color: #a4a68f; border: 0px;">Learn more</a></p>-->
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img src="img/slide/slide3.jpg">
                <div class="container">
                    <div class="carousel-caption text-right">
                        <h1>3.</h1>
                        <!--<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>-->
                        <!--<p><a class="btn btn-lg btn-primary" href="#" role="button" style="background-color: #ffe7e7; border: 0px;">Browse gallery</a></p>-->
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img src="img/slide/slide4.jpg">
                <div class="container">
                    <div class="carousel-caption text-right">
                        <h1>4.</h1>
                        <!--<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>-->
                        <!--<p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>-->
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    
    <!-- 练习区 -->
    <div class="album py-5 bg-light">
        <div class="container">
            <div><h1 style="text-align: center;">训练营</h1></div>
            <hr style="width: 100%;"><br>
            <div class="row">
                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img src="img/test_img/java-img.png" style="height: 200px; width: 200px; margin-top: 30px; margin-left: 75px; margin-bottom: 12px;">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center">
                                <button type="button" class="btn btn-primary my-2" style="width: 80%; margin: auto;">进入训练java </button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img src="img/test_img/android-img.jpg" style="height: 200px; width: 200px; margin-top: 30px; margin-left: 75px; margin-bottom: 12px;">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center">
                                <button type="button" class="btn btn-primary my-2" style="width: 80%; margin: auto;">进入训练android</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img src="img/test_img/front-end-img.jpg" style="height: 200px;  margin-top: 30px;margin-bottom: 13px; ">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center">
                                <button type="button" class="btn btn-primary my-2" style="width: 80%; margin: auto;">进入训练qianduan</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img src="img/test_img/swift.jpg" style="height: 225px;">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center" style="height: 71px;">
                                <button type="button" class="btn btn-primary my-2" style="width: 80%; margin: auto;">进入训练swift</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img src="img/test_img/go-img.jpg" style="height: 225px; width: 100%;">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center" style="height: 71px;">
                                <button type="button" class="btn btn-primary my-2" style="width: 80%; margin: auto;">go</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card mb-4 box-shadow">
                        <img src="img/test_img/C%23-img.jpeg" style="height: 225px; width: 100%;">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center" style="height: 71px;">
                                <button type="button" class="btn btn-primary my-2" style="width: 80%; margin: auto;">c#</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-slim.min.js"><\/script>')</script>
    <script src="js/bootstrap.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/holder.min.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.ui.touch-punch.min.js"></script>
    <script>
    	
    </script>
</body>
</html>