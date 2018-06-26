<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<base href="<%=basePath%>">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
	<style type="text/css"> 
	#aboutcenter{
	margin-left: auto;
	margin-right: auto;
	text-align:center;
	}
	</style> 

	</head>
	<body>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">
		<div id="fh5co-header">
		
		<!-- header -->
		<%@ include file="header.jsp" %>	
	
		</div>
		<!-- end:fh5co-header -->
		<div class="fh5co-parallax" style="background-image: url(images/home-image-4.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell animate-box">
							<h1 class="text-center">关于我们</h1>
							
						</div>
					</div>
				</div>
			</div>
		</div><!-- end: fh5co-parallax -->
		<!-- end:fh5co-hero -->
		<div id="fh5co-team-section">
			<div class="container">
				<div class="row about">
					<div class="col-md-12 col-md-offset-0">
						<img class="img-responsive animate-box" src="images/home-image-3.jpg" alt="About">
					</div>
					<div class="col-md-12 col-md-offset-0 animate-box">
						<p>由于社会的发展，人们的物质生活水平逐渐提高，生活的智能化却使人们所需要的劳动越来越少，加之物质生活条件的改善和饮食结构的不尽合理，肥胖病在发达国家及经济迅速发展的发展中国家象瘟疫一样蔓延开来，发病率逐年攀升，且出现年轻化态势。导致肥胖人数与日俱增，许多人为了自身健康，开始踏上减肥之路</p>
						<p>然而网络上的减肥、健身网站种类繁多，初次接触减肥网站的人们很难找到适合自己的网站，找到适合自己的、科学的减肥方法。</p>
						<p>在这个年代里，人民的健康意识正在觉醒，应该有更专业的工具，更科学的网站，让减肥健身变得更加科学。这就是od减肥网要做的事情，我们希望通过科学的方法，让受到肥胖症困扰的人群用科学的方法去减肥、追求健康，让人们保持健康的体魄。</p>
						<p>OD，我们的团队，我们致力于广大肥胖症患者，针对不同人群推荐不同的减肥方法，量体裁衣让肥胖症人群建立健康的生活习惯</p>
						<div id="aboutcenter">
							<span align="center">
							<a href="contact.jsp" class="btn btn-default" >如有兴趣，请联系我们</a>
							</span>
						</div>>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="heading-section text-center animate-box">
							<h2>Meet Our Trainers</h2>
							<p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						</div>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-md-4 col-sm-6">
						<div class="team-section-grid animate-box" style="background-image: url(images/trainer-1.jpg);">
							<div class="overlay-section">
								<div class="desc">
									<h3>John Doe</h3>
									<span>Body Trainer</span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
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
									<h3>James Smith</h3>
									<span>Swimming Trainer</span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
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
									<h3>John Doe</h3>
									<span>Chief Executive Officer</span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
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
									<h3>John Doe</h3>
									<span>Chief Executive Officer</span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
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
									<h3>John Doe</h3>
									<span>Chief Executive Officer</span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
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
									<h3>John Doe</h3>
									<span>Chief Executive Officer</span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
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
		<div id="fh5co-programs-section" class="fh5co-lightgray-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="heading-section text-center animate-box">
							<h2>Our Programs</h2>
							<p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
						</div>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-dumbell.svg" alt="Cycling">
							<h3>Body Combat</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
							<span><a href="#" class="btn btn-default">Join Now</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-yoga.svg" alt="">
							<h3>Yoga Programs</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
							<span><a href="#" class="btn btn-default">Join Now</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-cycling.svg" alt="">
							<h3>Cycling Program</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
							<span><a href="#" class="btn btn-default">Join Now</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-boxing.svg" alt="Cycling">
							<h3>Boxing Fitness</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
							<span><a href="#" class="btn btn-default">Join Now</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-swimming.svg" alt="">
							<h3>Swimming Program</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
							<span><a href="#" class="btn btn-default">Join Now</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="images/fit-massage.svg" alt="">
							<h3>Massage</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
							<span><a href="#" class="btn btn-default">Join Now</a></span>
						</div>
					</div>

				</div>
			</div>
		</div>
    
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

