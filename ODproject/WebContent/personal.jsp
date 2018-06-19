<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<base href="<%=basePath%>">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <meta charset="UTF-8">

    <link href='http://fonts.googleapis.com/css?family=Dosis:300,400,500,600,700,800' rel='stylesheet' type='text/css'>
        
    <!-- CSS Bootstrap & Custom -->
    <link href="css/personal/bootstrap.css" rel="stylesheet" media="screen">
    <link href="css/personal/font-awesome.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="css/personal/templatemo_misc.css">
    <link rel="stylesheet" href="css/personal/animate.css">
    <link href="css/personal/templatemo_style.css" rel="stylesheet" media="screen">
        
    <!-- Favicons -->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    
    <!-- JavaScripts -->
    <script src="js/personal/jquery-1.10.2.min.js"></script>
    <script src="js/personal/modernizr.js"></script>
    <style type="text/css">
        .left{
            float: left;
            width: 50%;
            font-size: 14px;
        }
        a.button{ 
            text-decoration:none;  
            background:#2f435e;  
            color:#f2f2f2;        
            padding: 10px 30px 10px 30px;  
            font-size:12px;  
            font-family: 微软雅黑,宋体,Arial,Helvetica,Verdana,sans-serif;  
            font-weight:bold;  
            border-radius:3px;        
            -webkit-transition:all linear 0.30s;  
            -moz-transition:all linear 0.30s;  
            transition:all linear 0.30s; 
        } 
    </style>
</head>
<body>
	<div class="bg-image"></div>
    <div class="overlay-bg"></div>

    
    

    <!-- This one in here is responsive menu for tablet and mobiles -->
    <div class="responsive-navigation visible-sm visible-xs">
        <a href="#" class="menu-toggle-btn">
            <i class="fa fa-bars fa-2x"></i>
        </a>
        <div class="responsive_menu">
            <ul class="main_menu">
                <li><a class="show-1 homebutton" href="#"><i class="fa fa-home"></i>首页</a></li>
                <li><a class="show-2" href="#"><i class="fa fa-group"></i>个人信息</a></li>
                <li><a class="show-3" href="#"><i class="fa fa-briefcase"></i>Our Gallery</a></li>
                <li><a class="show-4" href="#"><i class="fa fa-cogs"></i>服务</a></li>
                <li><a class="show-5" href="#"><i class="fa fa-globe"></i>联系我们</a></li>
            </ul> <!-- /.main_menu -->
        </div> <!-- /.responsive_menu -->
    </div> <!-- /responsive_navigation -->

    <div class="main-content">
        <div class="container">
            <div class="row">

                <!-- Static Menu -->
                <div class="col-md-2 visible-md visible-lg">
                    <div class="main_menu">
                        <ul class="menu">
                            <li><a class="show-1 homebutton" href="#" data-toggle="tooltip" data-original-title="首页"><i class="fa fa-home"></i></a></li>
                            <li><a class="show-2" href="#" data-toggle="tooltip" data-original-title="个人信息"><i class="fa fa-user"></i></a></li>
                            <li><a class="show-3" href="#" data-toggle="tooltip" data-original-title="我们的团队"><i class="fa fa-briefcase"></i></a></li>
                            <li><a class="show-4" href="#" data-toggle="tooltip" data-original-title="服务"><i class="fa fa-cog"></i></a></li>
                            <li><a class="show-5" href="#" data-toggle="tooltip" data-original-title="联系我们"><i class="fa fa-globe"></i></a></li>
                        </ul>
                    </div> <!-- /.main-menu -->
                </div> <!-- /.col-md-2 -->

                <!-- Begin Content -->
                <div class="col-md-10">

                    <div class="row">
                        <div class="col-md-12">
                            <div class="templatemo_logo">
                                <a href="index.jsp">
                                    <img src="images/personal/templatemo_logo.png" alt="Genius">
                                </a>
                            </div> <!-- /.logo -->
                        </div> <!-- /.col-md-12 -->
                    </div> <!-- /.row -->


                    <div id="menu-container">
                        
                        <div id="menu-1" class="homepage">
                            <div class="row">
                                <div class="col-md-4 col-sm-6 col-xs-6">
                                    <div class="portfolio-item">
                                        <div class="overlay">
                                            <a href="images/personal/gallery/p1.jpg" data-rel="lightbox">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                        <img src="images/personal/gallery/p1.jpg" alt="Image 1">
                                    </div> <!-- /.portfolio-item -->
                                </div> <!-- /.col-md-4 -->
                                <div class="col-md-4 col-sm-6 col-xs-6">
                                    <div class="portfolio-item">
                                        <div class="overlay">
                                            <a href="images/personal/gallery/p2.jpg" data-rel="lightbox">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                        <img src="images/personal/gallery/p2.jpg" alt="Image 2">
                                    </div> <!-- /.portfolio-item -->
                                </div> <!-- /.col-md-4 -->
                                <div class="col-md-4 col-sm-6 col-xs-6">
                                    <div class="portfolio-item">
                                        <div class="overlay">
                                            <a href="images/personal/gallery/p3.jpg" data-rel="lightbox">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                        <img src="images/personal/gallery/p3.jpg" alt="Image 3">
                                    </div> <!-- /.portfolio-item -->
                                </div> <!-- /.col-md-4 -->
                                <div class="col-md-4 col-sm-6 col-xs-6">
                                    <div class="portfolio-item">
                                        <div class="overlay">
                                            <a href="images/personal/gallery/p4.jpg" data-rel="lightbox">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                        <img src="images/personal/gallery/p4.jpg" alt="Image 4">
                                    </div> <!-- /.portfolio-item -->
                                </div> <!-- /.col-md-4 -->
                                <div class="col-md-4 col-sm-6 col-xs-6">
                                    <div class="portfolio-item">
                                        <div class="overlay">
                                            <a href="images/personal/gallery/p5.jpg" data-rel="lightbox">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                        <img src="images/personal/gallery/p5.jpg" alt="Image 5">
                                    </div> <!-- /.portfolio-item -->
                                </div> <!-- /.col-md-4 -->
                                <div class="col-md-4 col-sm-6 col-xs-6">
                                    <div class="portfolio-item">
                                        <div class="overlay">
                                            <a href="images/personal/gallery/p6.jpg" data-rel="lightbox">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                        <img src="images/personal/gallery/p6.jpg" alt="Image 6">
                                    </div> <!-- /.portfolio-item -->
                                </div> <!-- /.col-md-4 -->
                                <div class="col-md-4 col-sm-6 col-xs-6">
                                    <div class="portfolio-item">
                                        <div class="overlay">
                                            <a href="images/personal/gallery/p7.jpg" data-rel="lightbox">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                        <img src="images/personal/gallery/p7.jpg" alt="Image 7">
                                    </div> <!-- /.portfolio-item -->
                                </div> <!-- /.col-md-4 -->
                                <div class="col-md-4 col-sm-6 col-xs-6">
                                    <div class="portfolio-item">
                                        <div class="overlay">
                                            <a href="images/personal/gallery/p8.jpg" data-rel="lightbox">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                        <img src="images/personal/gallery/p8.jpg" alt="Image 8">
                                    </div> <!-- /.portfolio-item -->
                                </div> <!-- /.col-md-4 -->
                                <div class="col-md-4 col-sm-6 col-xs-6">
                                    <div class="portfolio-item">
                                        <div class="overlay">
                                            <a href="images/personal/gallery/p9.jpg" data-rel="lightbox">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                        <img src="images/personal/gallery/p9.jpg" alt="Image 9">
                                    </div> <!-- /.portfolio-item -->
                                </div> <!-- /.col-md-4 -->
                            </div> <!-- /.row -->
                        </div> <!-- /.homepage -->

                        <div id="menu-2" class="content about-us">
                            <div class="page-header">
                                <h2 class="page-title">个人信息</h2>
                            </div> <!-- /.page-header -->
                            <div class="content-inner">
                                <div class="row">
                                    <div class="left">
                                            <div>
                                                <table>
                                                    <tr>
                                                        <th>姓名：</th>
                                                        <th>${sessionScope.user.information.name }</th>
                                                    </tr>
                                                    <tr>
                                                        <th>性别：</th>
                                                        <th>${sessionScope.user.information.sex }</th>
                                                    </tr>
                                                     <tr>
                                                        <th>身高：</th>
                                                        <th>${sessionScope.user.information.height }cm</th>
                                                    </tr>
                                                     <tr>
                                                        <th>体重：</th>
                                                        <th>${sessionScope.user.information.weight }kg</th>
                                                    </tr>
                                                    <tr>
                                                        <th>邮箱：</th>
                                                        <th>${sessionScope.user.email }</th>
                                                    </tr>
                                                </table>
                                            </div>
                                    </div>
                                    <div class="left">
                                        <table>
                                            <tr>
                                                <th>生日：</th>
                                                <th>${sessionScope.user.information.birthday }</th>
                                            </tr>
                                            <tr>
                                                <th>所在地：</th>
                                                <th>${sessionScope.user.information.address.province }${sessionScope.user.information.address.city }${sessionScope.user.information.address.area }</th>
                                            </tr>
                                            <tr>
                                                <th>BMI指数：</th>
                                                <th>${sessionScope.user.information.bmi }</th>
                                            </tr>
                                            <tr>
                                                <th>运动基础：</th>
                                                <th>${sessionScope.user.information.sports_base }</th>
                                            </tr>
                                            <tr>
                                                <th>联系方式：</th>
                                                <th>${sessionScope.user.phone_number }&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="info/getInfo" class="button">完善信息</a></th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div class="our-team">
                                    
                                    <div class="row">
                                        <div class="col-md-4 col-sm-6">
                                            <div class="team-member">
                                                <div class="member-thumb">
                                                    <img src="images/personal/team1.jpg" alt="">
                                                </div>
                                                <div class="member-infos">
                                                    <h4 class="member-name">坚持运动</h4>
                                                    <p class="member-desc">防止脂肪堆积</p>
                                                </div>
                                            </div>
                                        </div> <!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-6">
                                            <div class="team-member">
                                                <div class="member-thumb">
                                                    <img src="images/personal/team2.jpg" alt="">
                                                </div>
                                                <div class="member-infos">
                                                    <h4 class="member-name">健康饮食</h4>      
                                                    <p class="member-desc">严格控制热量摄入.</p>
                                                </div>
                                            </div>
                                        </div> <!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-6">
                                            <div class="team-member">
                                                <div class="member-thumb">
                                                    <img src="images/personal/team3.jpg" alt="">
                                                </div>
                                                <div class="member-infos">
                                                    <h4 class="member-name">科学减肥</h4>
                                                    <p class="member-desc">掌握新陈代谢规律减肥更快.</p>
                                                </div>
                                            </div>
                                        </div> <!-- /.col-md-4 -->
                                    </div> <!-- /.row -->
                                </div> <!-- /.our-team -->
                            </div> <!-- /.content-inner -->
                        </div> <!-- /.about-us -->
                        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" ></a></div>

                        <div id="menu-3" class="content our-gallery">
                            <div class="page-header">
                                <h2 class="page-title">我们的团队</h2>
                            </div> <!-- /.page-header -->
                            <div class="content-inner">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h3 class="widget-title">团队成员</h3>
                                    </div> <!-- /.col-md-6 -->
                                    <div class="col-md-6">
                                        <div class="filter-work pull-right">
                                            <a href="#nogo" class="toggle-filter">筛选</a>
                                            <ul class="filter-controls controls">
                                                <li class="filter" data-filter="all">显示所有</li>
                                                <li class="filter" data-filter="branding">哈哈哈哈1</li>
                                                <li class="filter" data-filter="graphic">哈哈哈哈2</li>
                                                <li class="filter" data-filter="nature">哈哈哈哈3</li>
                                            </ul>
                                        </div> <!-- /.filter-work -->
                                    </div> <!-- /.col-md-6 -->
                                </div> <!-- /.row -->
                                <div class="row">
                                    <div id="Grid">
                                        <div class="col-md-4 col-sm-6 mix graphic">
                                            <div class="gallery-item">
                                                <div class="gallery-thumb">
                                                    <img src="images/personal/gallery/p1.jpg" alt="">
                                                    <div class="overlay-g">
                                                        <a href="images/personal/gallery/p1.jpg" data-rel="lightbox" class="fa fa-search"></a>
                                                    </div>
                                                </div> <!-- /.gallery-thumb -->
                                                <div class="gallery-content">
                                                    <h4 class="gallery-title">成员一</h4>    
                                                    <span class="gallery-category">哈哈哈哈1</span>
                                                </div> <!-- /.gallery-content -->
                                            </div> <!-- /.gallery-item -->
                                        </div> <!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-6 mix branding">
                                            <div class="gallery-item">
                                                <div class="gallery-thumb">
                                                    <img src="images/personal/gallery/p2.jpg" alt="">
                                                    <div class="overlay-g">
                                                        <a href="images/personal/gallery/p2.jpg" data-rel="lightbox" class="fa fa-search"></a>
                                                    </div>
                                                </div> <!-- /.gallery-thumb -->
                                                <div class="gallery-content">
                                                    <h4 class="gallery-title">成员二</h4>    
                                                    <span class="gallery-category">哈哈哈哈2</span>
                                                </div> <!-- /.gallery-content -->
                                            </div> <!-- /.gallery-item -->
                                        </div> <!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-6 mix nature">
                                            <div class="gallery-item">
                                                <div class="gallery-thumb">
                                                    <img src="images/personal/gallery/p3.jpg" alt="">
                                                    <div class="overlay-g">
                                                        <a href="images/personal/gallery/p3.jpg" data-rel="lightbox" class="fa fa-search"></a>
                                                    </div>
                                                </div> <!-- /.gallery-thumb -->
                                                <div class="gallery-content">
                                                    <h4 class="gallery-title">成员三</h4>    
                                                    <span class="gallery-category">哈哈哈哈3</span>
                                                </div> <!-- /.gallery-content -->
                                            </div> <!-- /.gallery-item -->
                                        </div> <!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-6 mix branding">
                                            <div class="gallery-item">
                                                <div class="gallery-thumb">
                                                    <img src="images/personal/gallery/p4.jpg" alt="">
                                                    <div class="overlay-g">
                                                        <a href="images/personal/gallery/p4.jpg" data-rel="lightbox" class="fa fa-search"></a>
                                                    </div>
                                                </div> <!-- /.gallery-thumb -->
                                                <div class="gallery-content">
                                                    <h4 class="gallery-title">成员四</h4>    
                                                    <span class="gallery-category">哈哈哈哈1</span>
                                                </div> <!-- /.gallery-content -->
                                            </div> <!-- /.gallery-item -->
                                        </div> <!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-6 mix graphic">
                                            <div class="gallery-item">
                                                <div class="gallery-thumb">
                                                    <img src="images/personal/gallery/p5.jpg" alt="">
                                                    <div class="overlay-g">
                                                        <a href="images/personal/gallery/p5.jpg" data-rel="lightbox" class="fa fa-search"></a>
                                                    </div>
                                                </div> <!-- /.gallery-thumb -->
                                                <div class="gallery-content">
                                                    <h4 class="gallery-title">成员五</h4>    
                                                    <span class="gallery-category">哈哈哈哈3</span>
                                                </div> <!-- /.gallery-content -->
                                            </div> <!-- /.gallery-item -->
                                        </div> <!-- /.col-md-4 -->
                                        <div class="col-md-4 col-sm-6 mix nature">
                                            <div class="gallery-item">
                                                <div class="gallery-thumb">
                                                    <img src="images/personal/gallery/p6.jpg" alt="">
                                                    <div class="overlay-g">
                                                        <a href="images/personal/gallery/p6.jpg" data-rel="lightbox" class="fa fa-search"></a>
                                                    </div>
                                                </div> <!-- /.gallery-thumb -->
                                                <div class="gallery-content">
                                                    <h4 class="gallery-title">成员六</h4>    
                                                    <span class="gallery-category">哈哈哈哈2</span>
                                                </div> <!-- /.gallery-content -->
                                            </div> <!-- /.gallery-item -->
                                        </div> <!-- /.col-md-4 -->
                                    </div> <!-- /#Grid -->
                                </div> <!-- /.row -->
                            </div> <!-- /.content-inner -->

                        </div> <!-- /.our-gallery -->

                        <div id="menu-4" class="content">
                            <div class="page-header">
                                <h2 class="page-title">服务</h2>
                            </div> <!-- /.page-header -->
                            <div class="content-inner">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h3 class="widget-title">常见问题：</h3>
                                    </div> <!-- /.col-md-12 -->
                                </div> <!-- /.row -->
                                <div class="row services">
                                    <div class="col-md-4 col-sm-6">
                                        <div class="service">
                                            <div class="header">
                                                <div class="header-bg"></div>
                                                <div class="service-header">
                                                    <div class="icon">
                                                        <i class="fa fa-heart-o"></i>
                                                    </div>
                                                    <h4 class="service-title">问题一</h4>
                                                </div>
                                            </div>
                                            <div class="body">哈哈哈哈哈哈哈哈哈哈哈哈</div>
                                        </div>
                                    </div> <!-- /.col-md-4 -->
                                    <div class="col-md-4 col-sm-6">
                                        <div class="service">
                                            <div class="header">
                                                <div class="header-bg"></div>
                                                <div class="service-header">
                                                    <div class="icon">
                                                        <i class="fa fa-flask"></i>
                                                    </div>
                                                    <h4 class="service-title">问题二</h4>
                                                </div>
                                            </div>
                                            <div class="body">哈哈哈哈哈哈哈哈哈哈哈哈</div>
                                        </div>
                                    </div> <!-- /.col-md-4 -->
                                    <div class="col-md-4 col-sm-6">
                                        <div class="service">
                                            <div class="header">
                                                <div class="header-bg"></div>
                                                <div class="service-header">
                                                    <div class="icon">
                                                        <i class="fa fa-money"></i>
                                                    </div>
                                                    <h4 class="service-title">问题三</h4>
                                                </div>
                                            </div>
                                            <div class="body">Download free <a rel="nofollow" href="#">templates</a> 哈哈哈哈哈哈哈哈哈哈哈哈</div>
                                        </div>
                                    </div> <!-- /.col-md-4 -->
                                    <div class="col-md-4 col-sm-6">
                                        <div class="service">
                                            <div class="header">
                                                <div class="header-bg"></div>
                                                <div class="service-header">
                                                    <div class="icon">
                                                        <i class="fa fa-eye"></i>
                                                    </div>
                                                    <h4 class="service-title">问题四</h4>
                                                </div>
                                            </div>
                                            <div class="body">哈哈哈哈哈哈哈哈哈哈哈哈</div>
                                        </div>
                                    </div> <!-- /.col-md-4 -->
                                    <div class="col-md-4 col-sm-6">
                                        <div class="service">
                                            <div class="header">
                                                <div class="header-bg"></div>
                                                <div class="service-header">
                                                    <div class="icon">
                                                        <i class="fa fa-mobile-phone"></i>
                                                    </div>
                                                    <h4 class="service-title">问题五</h4>
                                                </div>
                                            </div>
                                            <div class="body">哈哈哈哈哈哈哈哈哈哈哈哈</div>
                                        </div>
                                    </div> <!-- /.col-md-4 -->
                                    <div class="col-md-4 col-sm-6">
                                        <div class="service">
                                            <div class="header">
                                                <div class="header-bg"></div>
                                                <div class="service-header">
                                                    <div class="icon">
                                                        <i class="fa fa-cogs"></i>
                                                    </div>
                                                    <h4 class="service-title">问题六</h4>
                                                </div>
                                            </div>
                                            <div class="body">哈哈哈哈哈哈哈哈哈哈哈哈</div>
                                        </div>
                                    </div> <!-- /.col-md-4 -->
                                </div> <!-- /.row -->
                            </div> <!-- /.content-inner -->

                        </div> <!-- /.services -->

                        <div id="menu-5" class="content">
                            <div class="page-header">
                                <h2 class="page-title">联系我们</h2>
                            </div> <!-- /.page-header -->
                            <div class="content-inner">
                                <div class="row">
                                    <div class="col-md-8">
                                        <h3 class="widget-title">发送信息</h3>
                                        <p>发送你的信息帮我们更好的了解你。</a> </p>
                                        <div class="row contact-form">
                                            <div class="col-md-4">
                                                <label for="name-id">你的姓名:</label>
                                                <input name="name-id" type="text" id="name-id" maxlength="40">
                                            </div>
                                            <div class="col-md-4">
                                                <label for="email-id">邮箱:</label>
                                                <input name="email-id" type="text" id="email-id" maxlength="40">
                                            </div>
                                            <div class="col-md-4">
                                                <label for="subject-id">类型:</label>
                                                <input name="subject-id" type="text" id="subject-id" maxlength="60">
                                            </div>
                                        </div> <!-- /.contact-form -->
                                        <p class="full-row">
                                            <label for="message">具体信息:</label>
                                            <textarea name="message" id="message" rows="6"></textarea>
                                        </p>
                                        <input class="mainBtn" type="submit" name="" value="发送">
                                    </div> <!-- /.col-md-8 -->
                                    <div class="col-md-4">
                                        <div class="information">
                                            <h3 class="widget-title">信息</h3>
                                            <ul class="our-location">
                                                <li><span><i class="fa fa-map-marker"></i>地址:</span>120 Nullam viverra dolor</li>
                                                <li><span><i class="fa fa-map-marker"></i>电话:</span>010-020-0210</li>
                                                <li><span><i class="fa fa-map-marker"></i>邮箱:</span><a href="mailto:info@company.com">info@company.com</a></li>
                                            </ul>
                                        </div> <!-- /.information -->
                                        <div class="google-map">
                                            <h3 class="widget-title">我们的位置</h3>
                                            <div class="contact-map">
                                                <div class="google-map-canvas" id="map-canvas" style="height: 200px;">
                                                </div>
                                            </div> <!-- /.contact-map -->
                                        </div> <!-- /.google-map -->
                                    </div> <!-- /.col-md-4 -->
                                </div> <!-- /.row -->
                            </div> <!-- /.content-inner -->

                        </div> <!-- /.stay-in-touch -->
                        
                        <div class="site-footer">
                            <div class="row">
                                <div class="col-md-6">
                                    <p class="copyright-text">版权所有：xxxxxxxx</p>
                                </div>
                                <div class="col-md-6">
                                    <div class="social-icons-footer">
                                        <ul>
                                            <li><a href="#" class="fa fa-facebook"></a></li>
                                            <li><a href="#" class="fa fa-twitter"></a></li>
                                            <li><a href="#" class="fa fa-linkedin"></a></li>
                                            <li><a href="#" class="fa fa-instagram"></a></li>
                                            <li><a href="#" class="fa fa-rss"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- /.site-footer -->

                    </div> <!-- /.content-holder -->
                
                </div> <!-- /.col-md-10 -->
            </div> <!-- /.row -->
        </div> <!-- /.container -->
    </div> <!-- /.main-content -->

    <script src="js/personal/bootstrap.min.js"></script>

    <script src="js/personal/jquery.mixitup.min.js"></script>
    <script src="js/personal/jquery.nicescroll.min.js"></script>
    <script src="js/personal/jquery.lightbox.js"></script>
    <script src="js/personal/templatemo_custom.js"></script>
    <script>
        function initialize() {
          var mapOptions = {
            zoom: 15,
            center: new google.maps.LatLng(16.832179,96.134976)
          };

          var map = new google.maps.Map(document.getElementById('map-canvas'),
              mapOptions);
        }

        function loadScript() {
          var script = document.createElement('script');
          script.type = 'text/javascript';
          script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' +
              'callback=initialize';
          document.body.appendChild(script);
        }

    </script>
</body>
</html>