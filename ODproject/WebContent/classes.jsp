
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Fitness &mdash; 100% Free Fully Responsive HTML5 Template
	by FREEHTML5.co</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />




<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900'
	rel='stylesheet' type='text/css'>

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
				<%@ include file="header.jsp"%>

			</div>
			<!-- end:fh5co-header -->
			<div class="fh5co-parallax"
				style="background-image: url(images/home-image-2.jpg);"
				data-stellar-background-ratio="0.5">
				<div class="overlay"></div>
				<div class="container">
					<div class="row">
						<div
							class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
							<div class="fh5co-intro fh5co-table-cell animate-box">
								<h1 class="text-center">课程</h1>
								<p>
									文字一 <a href="#">文字二</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end: fh5co-parallax -->
			<div class="container">
				<div class="row text-center">
					<c:forEach items="${courseTypeList }" var="p">
						<a href="course/courseShow?coursetypeid=${p.id }">
							<div class="col-md-4 col-sm-6">
								<div class="team-section-grid animate-box"
									style="background-image: url(${p.img});height:350px;margin-top:30px;">
									<div style="margin-top:150px;">
										<h1 style="color:#FFF">${p.typename }</h1>
										<h2 style="color:#FFF">${p.courses.size() }个课程</h2>
									</div>
									<div class="overlay-section">
										<div class="desc">
											<h2 style="color:#FFF">类别介绍</h2>
											<p style="color:#FFF">${p.describe }</p>
											<p class="fh5co-social-icons">
												<a href="#"><i class="icon-ribbon"></i></a> 
												<a href="#"><i class="icon-heart"></i></a> 
												<a href="#"><i class="icon-instagram-with-circle"></i></a>
											</p>
										</div>
									</div>
								</div>
							</div>
						</a>
					</c:forEach>
				</div>
			</div>

			<div class="container">
				<div class="row text-center"">
					<c:forEach items="${courseList }" var="p">
						<div class="col-md-4 col-sm-6">
							<a href="course/courseContentShow?courseid=${p.id }">
								<div class="team-section-grid animate-box"
									style="background-image: url(${p.img });height:350px;margin-top:30px;">
									<div style="margin-top:150px;">
										<h1 style="color:#FFF">${p.name }</h1>
										<h2 style="color:#FFF">$个课程</h2>
									</div>
									<div class="overlay-section">
										<div class="desc">
											<h2 style="color:#FFF">课程介绍</h2>
											<p style="color:#FFF">${p.introduce }</p>
											<p class="fh5co-social-icons">
												<a href="#"><i class="icon-twitter-with-circle"></i></a> 
												<a href="#"><i class="icon-facebook-with-circle"></i></a> 
												<a href="#"><i class="icon-instagram-with-circle"></i></a>
											</p>
										</div>
									</div>
								</div>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="container">
				<div class="row text-center">
					<c:forEach items="${courseContentList }" var="p">
					<a>
						<div class="col-md-4 col-sm-6">
							<div class="team-section-grid animate-box"
								style="background-image: url(${p.img });">
								<div class="overlay-section">
									<div class="desc">
										<h3>${p.name }</h3>
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
					</c:forEach>
				</div>
			</div>
			<!-- footer.jsp -->
			<%@ include file="footer.jsp"%>

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




