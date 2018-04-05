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
	<link rel="stylesheet" href="css/shows.css">


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
			<header id="fh5co-header-section">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo"><a href="index.html">Fit<span>ness</span></a></h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li>
									<a href="index.html">Home</a>
								</li>
								<li>
									<a href="classes.html" class="fh5co-sub-ddown">Classes</a>
									 <ul class="fh5co-sub-menu">
									 	<li><a href="left-sidebar.html">Web Development</a></li>
									 	<li><a href="right-sidebar.html">Branding &amp; Identity</a></li>
										<li>
											<a href="#" class="fh5co-sub-ddown">Free HTML5</a>
											<ul class="fh5co-sub-menu">
												<li><a href="#/preview/?item=build-free-html5-bootstrap-template" target="_blank">Build</a></li>
												<li><a href="#/preview/?item=work-free-html5-template-bootstrap" target="_blank">Work</a></li>
												<li><a href="#/preview/?item=light-free-html5-template-bootstrap" target="_blank">Light</a></li>
												<li><a href="#/preview/?item=relic-free-html5-template-using-bootstrap" target="_blank">Relic</a></li>
												<li><a href="#/preview/?item=display-free-html5-template-using-bootstrap" target="_blank">Display</a></li>
												<li><a href="#/preview/?item=sprint-free-html5-template-bootstrap" target="_blank">Sprint</a></li>
											</ul>
										</li>
										<li><a href="#">UI Animation</a></li>
										<li><a href="#">Copywriting</a></li>
										<li><a href="#">Photography</a></li> 
									</ul>
								</li>
								<li>
									<a href="schedule.html">Schedule</a>
								</li>
								<li><a href="trainer.html">Trainers</a></li>
								<li class="active"><a href="about.html">Show Times</a></li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</header>		
		</div>
		<!-- end:fh5co-header -->
		<div class="fh5co-parallax" style="background-image: url(images/home-image-4.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell animate-box">
							<h1 class="text-center">Show Times</h1>
							<p>show yourself</p>
						</div>
					</div>
				</div>
			</div>
		</div><!-- end: fh5co-parallax -->
		<!-- end:fh5co-hero -->
		<!-- <div id="fh5co-team-section">
			<div class="container">
				<div id="showmyself">
					<DIV style="cursor:hand" onclick="isHidden('div1')"><b>show</b></DIV>
					<DIV id="div1" style="display:none">
						<form action="form_action.asp" method="get">
							<textarea rows=3" cols="50">show yourself</textarea ></br>
							<input type="submit" value="show" / > 
						</form>
					</DIV>
				</div>
				<div class="row about" >
					<div class="col-md-12 col-md-offset-0">
						
					</div>
					<div class="col-md-12 col-md-offset-0 animate-box" id="shows">
						<p>é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times </p>
						<blockquote>
						  <p>é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times </p>
						</blockquote>
						<p>é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times </p>
						</blockquote>
						<p>é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times </p>
						</blockquote>
						<p>é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times </p>
						</blockquote>
						<p>é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times é£éå±ç¤ºshow times </p>
					</div>
					<div id="showsbtn">
					<li><a href="shows.html">æ¥çæ´å¤â¦â¦</a></li>>
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
		</div> -->
		<footer>
			<div id="footer">
				<div class="container">
					<div class="row">
						<div class="col-md-4 animate-box">
							<h3 class="section-title">About Us</h3>
							<p>we are old drivers teamï¼and OD is us product</p>
						</div>

						<div class="col-md-4 animate-box">
							<h3 class="section-title">Our Address</h3>
							<ul class="contact-info">
								<li><i class="icon-map-marker"></i>æ²³åçç³å®¶åºå¸è£ååºèå¸æºæ®ç¹</li>
								<li><i class="icon-phone"></i>+ 123 4567 8910</li>
								<li><i class="icon-envelope"></i><a href="#">www.olddriver@icloud.com</a></li>
								<li><i class="icon-globe2"></i><a href="#">www.olddriver.com</a></li>
							</ul>
						</div>
						<div class="col-md-4 animate-box">
							<h3 class="section-title">Drop us a line</h3>
							<form class="contact-form">
								<div class="form-group">
									<label for="name" class="sr-only">Name</label>
									<input type="name" class="form-control" id="name" placeholder="Name">
								</div>
								<div class="form-group">
									<label for="email" class="sr-only">Email</label>
									<input type="email" class="form-control" id="email" placeholder="Email">
								</div>
								<div class="form-group">
									<label for="message" class="sr-only">Message</label>
									<textarea class="form-control" id="message" rows="7" placeholder="Message"></textarea>
								</div>
								<div class="form-group">
									<input type="submit" id="btn-submit" class="btn btn-send-message btn-md" value="Send Message">
								</div>
							</form>
						</div>
					</div>
					<div class="row copy-right">
						<div class="col-md-6 col-md-offset-3 text-center">
							<p class="fh5co-social-icons">
								<a href="#"><i class="icon-twitter2"></i></a>
								<a href="#"><i class="icon-facebook2"></i></a>
								<a href="#"><i class="icon-instagram"></i></a>
								<a href="#"><i class="icon-dribbble2"></i></a>
								<a href="#"><i class="icon-youtube"></i></a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
	

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
	<script src="js/shows.js"></script>
	<script src="js/showmyself.js"></script>

	</body>
</html>
