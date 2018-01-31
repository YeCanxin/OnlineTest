<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/navbar-top-fixed.css" rel="stylesheet" />
    <style>
        .navbar-img{
            margin-left: 150px;
            margin-right: 50px;
        }
        .search-form{
            margin-right: 90px;
        }
        .login-register{
            margin-right: 30px;
        }
        .nav-item{
            margin-left: 30px;
            margin-right: 30px;
        }
    </style>
</head>
<body>
	<div class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: #616d78;">
        <img src="img/website1.png" class="navbar-img" style="width: 56px;height: 56px;">
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">首页<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">练习</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">测试</a>
                </li>
            </ul>
            <form class="form-inline mt-2 mt-md-0 search-form">
                <input class="form-control mr-sm-2" type="text" placeholder="搜索..." aria-label="Search">
                <button class="btn my-sm-0" type="submit">Search</button>
            </form>
            <button class="btn btn-outline-success my-sm-0 login-register" type="submit"
                    data-toggle="modal" data-target="#loginModal">登录/注册</button>
        </div>
    </div>
    
    
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document" id="modalDialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="text-center">
                        <img src="img/website1.png" style="width: 60px; height: 60px;">
                        <h3>Login</h3>
                    </div>
                    
                    <s:form action="login" method="post" namespace="/">
                    	<div class="form-group" style="width: 80%;margin: auto; margin-bottom: 20px;">
                                <label for="inputUsername" class="sr-only">Email address</label>
                                <input name="user.username" type="text" id="inputUsername" class="form-control" placeholder="Email address">
                            </div>
                            <div class="form-group" style="width: 80%;margin: auto; margin-bottom: 20px;">
                                <label for="inputPassword" class="sr-only">Password</label>
                                <input name="user.password" type="password" id="inputPassword" class="form-control" placeholder="Password" >
                            </div>
                            <div class="form-group" style="width: 80%;margin: auto; margin-bottom: 20px;">
                                <button class="btn btn-lg btn-primary btn-block" type="submit" id="login-button">Sign in</button>
                            </div>
                    </s:form>
                    <div class="register-link">
                        <p style="font-size: 10px; float: left;">没有账号？<a href="">注册一个</a></p>
                        <p style="font-size: 10px; float: right;"><a href="">忘记密码</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-slim.min.js"><\/script>')</script>
    <script src="js/bootstrap.js"></script>
</body>
</html>