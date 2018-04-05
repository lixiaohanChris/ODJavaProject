<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<base href="<%=basePath%>">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Fitness &mdash; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">

	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">
		<div id="fh5co-header">
	    
	    <!-- header -->
		<%@ include file="header.jsp" %>
		
		</div>
		<!-- end:fh5co-header -->
		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/home-image.jpg);">
				<div class="desc animate-box">
					<div class="container">
						<div class="row">
							<div class="col-md-7">
								<h2>首页大图白色文字一行 <br>文字二行 <b>加粗文字二行</b></h2>
								<p><span>文字三行<i class="icon-heart3"></i> 文字三行二 <a href="#" class="fh5co-site-name">文字三行三</a></span></p>
								<span><a class="btn btn-primary" href="#">按钮</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
		<!-- end:fh5co-hero -->
		<div id="fh5co-schedule-section" class="fh5co-lightgray-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="heading-section text-center animate-box">
							<h2>课程表</h2>
							<p>课程表描述</p>
						</div>
					</div>
				</div>
				<div class="row animate-box">
					<div class="col-md-10 col-md-offset-1 text-center">
						<ul class="schedule">
							<li><a href="#" class="active" data-sched="sunday">星期日</a></li>
							<li><a href="#" data-sched="monday">星期一</a></li>
							<li><a href="#" data-sched="tuesday">星期二</a></li>
							<li><a href="#" data-sched="wednesday">星期三</a></li>
							<li><a href="#" data-sched="thursday">星期四</a></li>
							<li><a href="#" data-sched="monday">星期五</a></li>
							<li><a href="#" data-sched="saturday">星期六</a></li>
						</ul>
					</div>
					<div class="row text-center">
						<div class="col-md-12 schedule-container">
							<div class="schedule-content active" data-day="sunday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-dumbell.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>健美操</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-yoga.svg" alt="">
										<small>06AM-7AM</small>
										<h3>瑜伽课程</h3>
										<span>James Smith</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-cycling.svg" alt="">
										<small>06AM-7AM</small>
										<h3>自行车</h3>
										<span>Rita Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-boxing.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>拳击健身</h3>
										<span>John Dose</span>
									</div>
								</div>
							</div>
							<!-- END sched-content -->

							<div class="schedule-content active" data-day="monday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-dumbell.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>健美操</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-yoga.svg" alt="">
										<small>06AM-7AM</small>
										<h3>瑜伽课程</h3>
										<span>James Smith</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-cycling.svg" alt="">
										<small>06AM-7AM</small>
										<h3>自行车</h3>
										<span>Rita Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-boxing.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>拳击健身</h3>
										<span>John Dose</span>
									</div>
								</div>
							</div>
							<!-- END sched-content -->

							<div class="schedule-content active" data-day="tuesday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-dumbell.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>健美操</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-yoga.svg" alt="">
										<small>06AM-7AM</small>
										<h3>瑜伽课程</h3>
										<span>James Smith</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-cycling.svg" alt="">
										<small>06AM-7AM</small>
										<h3>自行车</h3>
										<span>Rita Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-boxing.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>拳击健身</h3>
										<span>John Dose</span>
									</div>
								</div>
							</div>
							<!-- END sched-content -->

							<div class="schedule-content" data-day="wednesday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-dumbell.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>健美操</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-yoga.svg" alt="">
										<small>06AM-7AM</small>
										<h3>瑜伽课程</h3>
										<span>James Smith</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-cycling.svg" alt="">
										<small>06AM-7AM</small>
										<h3>自行车</h3>
										<span>Rita Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-boxing.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>拳击健身</h3>
										<span>John Dose</span>
									</div>
								</div>
							</div>
							<!-- END sched-content -->

							<div class="schedule-content" data-day="thursday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-dumbell.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>健美操</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-yoga.svg" alt="">
										<small>06AM-7AM</small>
										<h3>瑜伽课程</h3>
										<span>James Smith</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-cycling.svg" alt="">
										<small>06AM-7AM</small>
										<h3>自行车</h3>
										<span>Rita Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-boxing.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>拳击健身</h3>
										<span>John Dose</span>
									</div>
								</div>
							</div>
							<!-- END sched-content -->

							<div class="schedule-content" data-day="friday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-dumbell.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>健美操</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-yoga.svg" alt="">
										<small>06AM-7AM</small>
										<h3>瑜伽课程</h3>
										<span>James Smith</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-cycling.svg" alt="">
										<small>06AM-7AM</small>
										<h3>自行车</h3>
										<span>Rita Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-boxing.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>拳击健身</h3>
										<span>John Dose</span>
									</div>
								</div>
							</div>
							<!-- END sched-content -->

							<div class="schedule-content" data-day="saturday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-dumbell.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>健美操</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-yoga.svg" alt="">
										<small>06AM-7AM</small>
										<h3>瑜伽课程</h3>
										<span>James Smith</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-cycling.svg" alt="">
										<small>06AM-7AM</small>
										<h3>自行车</h3>
										<span>Rita Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="images/fit-boxing.svg" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>拳击健身</h3>
										<span>John Dose</span>
									</div>
								</div>
							</div>
							<!-- END sched-content -->
						</div>

						
					</div>
				</div>
			</div>
		</div>
		<div class="fh5co-parallax" style="background-image: url(images/home-image-3.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell animate-box">
							<h1 class="text-center">首页大图二文字一行</h1>
							<p>文字二行 <a href="#">连接地址</a></p>
						</div>
					</div>
				</div>
			</div>
		</div><!-- end: fh5co-parallax -->
		<div id="fh5co-programs-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="heading-section text-center animate-box">
							<h2>我们的计划</h2>
							<p>计划描述</p>
						</div>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-dumbell.svg" alt="Cycling">
							<h3>身体战斗</h3>
							<p>描述一</p>
							<span><a href="#" class="btn btn-default">立即加入</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-yoga.svg" alt="">
							<h3>瑜伽课程</h3>
							<p>描述二 </p>
							<span><a href="#" class="btn btn-default">立即加入</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-cycling.svg" alt="">
							<h3>自行车运动</h3>
							<p>描述三</p>
							<span><a href="#" class="btn btn-default">立即加入</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-boxing.svg" alt="Cycling">
							<h3>拳击健身</h3>
							<p>描述四 </p>
							<span><a href="#" class="btn btn-default">立即加入</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-swimming.svg" alt="">
							<h3>游泳运动</h3>
							<p>描述五</p>
							<span><a href="#" class="btn btn-default">立即加入</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-massage.svg" alt="">
							<h3>大保健</h3>
							<p>描述六</p>
							<span><a href="#" class="btn btn-default">立即加入</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="fh5co-team-section" class="fh5co-lightgray-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="heading-section text-center animate-box">
							<h2>认识我们的培训师</h2>
							<p>培训师描述</p>
						</div>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-md-4 col-sm-6">
						<div class="team-section-grid animate-box" style="background-image: url(images/trainer-1.jpg);">
							<div class="overlay-section">
								<div class="desc">
									<h3>春云烤肉王</h3>
									<span>专业烤肉</span>
									<p>兼职身体训练师</p>
									<p class="fh5co-social-icons">
										<a href="#"><i class="icon-twitter-with-circle"></i></a>
										<a href="#"><i class="icon-facebook-with-circle"></i></a>
										<a href="#"><i class="icon-instagram-with-circle"></i></a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="team-section-grid animate-box" style="background-image: url(images/trainer-2.jpg);">
							<div class="overlay-section">
								<div class="desc">
									<h3>老司机</h3>
									<span>专业司机</span>
									<p>兼职游泳训练师</p>
									<p class="fh5co-social-icons">
										<a href="#"><i class="icon-twitter-with-circle"></i></a>
										<a href="#"><i class="icon-facebook-with-circle"></i></a>
										<a href="#"><i class="icon-instagram-with-circle"></i></a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="team-section-grid animate-box" style="background-image: url(images/trainer-3.jpg);">
							<div class="overlay-section">
								<div class="desc">
									<h3>不知名1</h3>
									<span>描述1</span>
									<p>描述1</p>
									<p class="fh5co-social-icons">
										<a href="#"><i class="icon-twitter-with-circle"></i></a>
										<a href="#"><i class="icon-facebook-with-circle"></i></a>
										<a href="#"><i class="icon-instagram-with-circle"></i></a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="team-section-grid animate-box" style="background-image: url(images/trainer-4.jpg);">
							<div class="overlay-section">
								<div class="desc">
									<h3>阿明</h3>
									<span>得不到呆毛的男人</span>
									<p>专业非洲人</p>
									<p class="fh5co-social-icons">
										<a href="#"><i class="icon-twitter-with-circle"></i></a>
										<a href="#"><i class="icon-facebook-with-circle"></i></a>
										<a href="#"><i class="icon-instagram-with-circle"></i></a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="team-section-grid animate-box" style="background-image: url(images/trainer-5.jpg);">
							<div class="overlay-section">
								<div class="desc">
									<h3>不知名2</h3>
									<span>描述2</span>
									<p>描述2</p>
									<p class="fh5co-social-icons">
										<a href="#"><i class="icon-twitter-with-circle"></i></a>
										<a href="#"><i class="icon-facebook-with-circle"></i></a>
										<a href="#"><i class="icon-instagram-with-circle"></i></a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="team-section-grid animate-box" style="background-image: url(images/trainer-6.jpg);">
							<div class="overlay-section">
								<div class="desc">
									<h3>不知名3</h3>
									<span>描述3</span>
									<p>描述3</p>
									<p class="fh5co-social-icons">
										<a href="#"><i class="icon-twitter-with-circle"></i></a>
										<a href="#"><i class="icon-facebook-with-circle"></i></a>
										<a href="#"><i class="icon-instagram-with-circle"></i></a>
									</p>
								</div>
							</div>
						</div>
					</div>	
				</div>
			</div>
		</div>
		<div class="fh5co-parallax" style="background-image: url(images/home-image-2.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-md-pull-3 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 fh5co-table">
						<div class="fh5co-intro fh5co-table-cell box-area">
							<div class="animate-box">
								<h1>今年夏季的健身课程</h1>
								<p>现在支付并获得25％的折扣</p>
								<a href="#" class="btn btn-primary">成为会员</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div><!-- end: fh5co-parallax -->
		<div id="fh5co-pricing-section" class="fh5co-pricing fh5co-lightgray-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="heading-section text-center animate-box">
							<h2>定价计划</h2>
							<p>定价计划描述</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="pricing">
					<div class="col-md-3 animate-box">
						<div class="price-box animate-box">
							<h2 class="pricing-plan">穷逼价</h2>
							<div class="price"><sup class="currency">￥</sup>9<small>/月</small></div>
							<p>价格1</p>
							<ul class="classes">
								<li>15个心脏类</li>
								<li class="color">10游泳课</li>
								<li>10个瑜伽课程</li>
								<li class="color">20次有氧运动</li>
								<li>10个Zumba课程</li>
								<li class="color">5个大保健</li>
								<li>10健身房</li>
							</ul>
							<a href="#" class="btn btn-default">选择方案</a>
						</div>
					</div>

					<div class="col-md-3 animate-box">
						<div class="price-box animate-box">
							<h2 class="pricing-plan">小穷逼价</h2>
							<div class="price"><sup class="currency">￥</sup>27<small>/月</small></div>
							<p>价格2</p>
							<ul class="classes">
								<li>15个心脏类</li>
								<li class="color">10游泳课</li>
								<li>10个瑜伽课程</li>
								<li class="color">20次有氧运动</li>
								<li>10个Zumba课程</li>
								<li class="color">5个大保健</li>
								<li>10健身房</li>
							</ul>
							<a href="#" class="btn btn-default">选择方案</a>
						</div>
					</div>

					<div class="col-md-3 animate-box">
						<div class="price-box animate-box popular">
							<h2 class="pricing-plan pricing-plan-offer">小资价 <span>最佳推荐</span></h2>
							<div class="price"><sup class="currency">$</sup>74<small>/月</small></div>
							<p>价格3</p>
							<ul class="classes">
								<li>15个心脏类</li>
								<li class="color">10游泳课</li>
								<li>10个瑜伽课程</li>
								<li class="color">20次有氧运动</li>
								<li>10个Zumba课程</li>
								<li class="color">5个大保健</li>
								<li>10健身房</li>
							</ul>
							<a href="#" class="btn btn-select-plan btn-sm">选择方案</a>
						</div>
					</div>

					<div class="col-md-3 animate-box">
						<div class="price-box animate-box">
							<h2 class="pricing-plan">土豪价</h2>
							<div class="price"><sup class="currency">￥</sup>140<small>/月</small></div>
							<p>价格4的描述价格4价格4的描述价格4的描述</p>
							<ul class="classes">
								<li>15个心脏类</li>
								<li class="color">10游泳课</li>
								<li>10个瑜伽课程</li>
								<li class="color">20次有氧运动</li>
								<li>10个Zumba课程</li>
								<li class="color">5个大保健</li>
								<li>10健身房</li>
							</ul>
							<a href="#" class="btn btn-default">选择方案</a>
						</div>
					</div>

				</div>
				</div>
			</div>
		</div>
		
		<div id="fh5co-blog-section">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="col-md-12">
							<div class="heading-section animate-box">
								<h2>最近从博客</h2>
							</div>
						</div>
						<div class="col-md-12 col-md-offset-0">
							<div class="fh5co-blog animate-box">
								<div class="inner-post">
									<a href="#"><img class="img-responsive" src="images/blog-1.jpg" alt=""></a>
								</div>
								<div class="desc">
									<h3><a href=""#>今夏开始新一轮健美运动</a></h3>
									<span class="posted_by">发布者：管理员</span>
									<span class="comment"><a href="">21<i class="icon-bubble22"></i></a></span>
									<p>远在山背后的词</p>
									<a href="#" class="btn btn-default">阅读更多</a>
								</div> 
							</div>
						</div>
						<div class="col-md-12 col-md-offset-0">
							<div class="fh5co-blog animate-box">
								<div class="inner-post">
									<a href="#"><img class="img-responsive" src="images/blog-1.jpg" alt=""></a>
								</div>
								<div class="desc">
									<h3><a href=""#>今夏开始新一轮健美运动</a></h3>
									<span class="posted_by">发布者：管理员</span>
									<span class="comment"><a href="">21<i class="icon-bubble22"></i></a></span>
									<p>远在山背后的词</p>
									<a href="#" class="btn btn-default">阅读更多</a>
								</div> 
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="col-md-12">
							<div class="heading-section animate-box">
								<h2>即将举行的活动</h2>
							</div>
						</div>
						<div class="col-md-12 col-md-offset-0">
							<div class="fh5co-blog animate-box">
								<div class="meta-date text-center">
									<p><span>2018</span><span class="date">年</span><span>3</span><span>月</span><span class="date">29</span><span>日</span></p>
								</div>
								<div class="desc desc2">
									<h3><a href=""#>今夏开始新一轮健美运动</a></h3>
									<span class="posted_by">发布者：管理员</span>
									<span class="comment"><a href="">21<i class="icon-bubble22"></i></a></span>
									<p>在很远的地方，远离Vokalia和Consonantia这两个国家</p>
									<a href="#" class="btn btn-default">阅读更多</a>
								</div> 
							</div>
						</div>
						<div class="col-md-12 col-md-offset-0">
							<div class="fh5co-blog animate-box">
								<div class="meta-date text-center">
									<p><span>2018</span><span class="date">年</span><span>3</span><span>月</span><span class="date">29</span><span>日</span></p>
								</div>
								<div class="desc desc2">
									<h3><a href=""#>今夏开始新一轮健美运动</a></h3>
									<span class="posted_by">发布者：管理员</span>
									<span class="comment"><a href="">21<i class="icon-bubble22"></i></a></span>
									<p>在很远的地方，远离Vokalia和Consonantia这两个国家</p>
									<a href="#" class="btn btn-default">阅读更多</a>
								</div> 
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- fh5co-blog-section -->
    
    <!-- footer.jsp -->
	<%@ include file="footer.jsp" %>
	
	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->


	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>

	</body>
</html>


