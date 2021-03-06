﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<base href="<%=basePath%>">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
    <script src="js/personal/bootstrap.min.js"></script>
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
    <script>
    	function deleteClick(id){
    		$.ajax({
				ansyc:false,
				url:"classes/deleteCourse?CourseId="+id,
				type:'post',
				success : function (data){
					$('#Grid').html(data); 
				},
				error : function (data){
					alert('b');
					alert(data);
				}
			})
    	}
	    function imgClick1(id){
	    	$.ajax({
				ansyc:false,
				url:"classes/getMyCourse/courseByTypeId?getId="+id,
				type:'post',
				success : function (data){
					$('#Grid').html(data); 
				},
				error : function (data){
					alert('b');
					alert(data);
				}
			})
		}
	    function imgClick2(id){
	    	$.ajax({
				ansyc:false,
				url:"classes/getMyCourse/courseContent?getId="+id,
				type:'post',
				success : function (data){
					$('#Grid').html(data); 
				},
				error : function (data){
					alert('b');
					alert(data);
				}
			})
		}
    	$(document).ready(function(){
    		$('.show-2').click(function(){
    			$.ajax({
    				ansyc:false,
    				url:'info/getUserInfo',
    				type:'post',
    				success : function (data){
    					$('#menu-2').html(data);
    				},
    				error : function (data){
    					alert('b');
    					alert(data);
    				}
    			})
    		})
    		$('.show-3').click(function(){
    			$.ajax({
    				ansyc:true,
    				url:'classes/getMyCourse/courseType?getId=null',
    				type:'post',
    				success : function (data){
    					$('#Grid').html(data); 
    				},
    				error : function (data){
    					alert('b');
    					alert(data);
    				}
    			})
    		})
    		$('#courseTypeLi').click(function(){
    			$.ajax({
    				ansyc:true,
    				url:'classes/getMyCourse/courseType?getId=null',
    				type:'post',
    				success : function (data){
    					$('#Grid').html(data); 
    				},
    				error : function (data){
    					alert('b');
    					alert(data);
    				}
    			})
    		})
    		$('#courseLi').click(function(){
    			$.ajax({
    				ansyc:true,
    				url:'classes/getMyCourse/course?getId=null',
    				type:'post',
    				success : function (data){
    					$('#Grid').html(data); 
    				},
    				error : function (data){
    					alert('b');
    					alert(data);
    				}
    			})
    		})
    		$('.show-4').click(function(){
    			$.ajax({
    				ansyc:false,
    				url:'commend/getCommend',
    				type:'post',
    				success : function (data){
    					$('#menu-4').html(data);
    				},
    				error : function (data){
    					alert('b');
    					alert(data);
    				}
    			})
    		})
    		$('.mainBtn').click(function(){
    			$.ajax({
    				ansyc:false,
    				url:'feedback/insertFeedback',
    				type:'post',
    				data:$("#feedbackForm").serialize(),
    				success : function (data){
    					alert('感谢您的意见')
    					$("#resetButton").click();
    				},
    				error : function (data){
    					alert('b');
    					alert(data);
    				}
    			})
    			return false;
    		})
    		
    	})
    </script>
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
                <li><a class="show-1 homebutton" href="1"><i class="fa fa-home"></i>首页</a></li>
                <li><a class="show-2" href="info/getUserInfo"><i class="fa fa-group"></i>个人信息</a></li>
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
									<h1 style="color:white">Back Home</h1>
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
                        </div> <!-- /.about-us -->
                       

                        <div id="menu-3" class="content our-gallery">
                            <div class="page-header">
                                <h2 class="page-title">选取的课程</h2>
                            </div> <!-- /.page-header -->
                            <div class="content-inner">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h3 class="widget-title">展示</h3>
                                    </div> <!-- /.col-md-6 -->
                                    <div class="col-md-6">
                                        <div class="filter-work pull-right">
                                            <a href="#nogo" class="toggle-filter">筛选</a>
                                            <ul class="filter-controls controls">
                                                <li class="filter" data-filter="branding" id="courseTypeLi">课程类型</li>
                                                <li class="filter" data-filter="graphic" id="courseLi">课程</li>
                                            </ul>
                                        </div> <!-- /.filter-work -->
                                    </div> <!-- /.col-md-6 -->
                                </div> <!-- /.row -->
                                <div class="row">
                                    <div id="Grid"></div><!-- /#Grid -->
                                </div> <!-- /.row -->
                            </div> <!-- /.content-inner -->
						</div> <!-- /.our-gallery -->

                        <div id="menu-4" class="content">
                        </div> <!-- /.services -->

                        <div id="menu-5" class="content">
								<div class="page-header">
									<h2 class="page-title">联系我们</h2>
								</div>
								<!-- /.page-header -->
								<div class="content-inner">
									<div class="row">
										<div class="col-md-8">
											<h3 class="widget-title">发送信息</h3>
											<p>
												发送你的信息帮我们更好的了解你。</a>
											</p>
											<div class="row contact-form">
												<form action="a" method="post" id="feedbackForm">
													<input type="reset" id="resetButton" style="display:none;"/>
													<div class="col-md-4" weight="300px">
														<label for="title">题目:</label> <input name="title"
															type="text" id="name-id" maxlength="50" value="" placeholder="题目"
															onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
															onBlur="if(!value){value=defaultValue; this.style.color='#999'}"
															style="color: #999""/>
													</div>
													<div class="col-md-4">
														<label for="type">类型:</label> <input name="type"
															type="text" id="subject-id" maxlength="20" value="" placeholder="类型"
															onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
															onBlur="if(!value){value=defaultValue; this.style.color='#999'}"
															style="color: #999""/>
													</div>
											</div>
											<!-- /.contact-form -->
											<p class="full-row">
												<label for="message">具体信息:</label>
												<textarea name="content" id="message" rows="6"
													maxlength="200" value=""
													onkeyup="this.value=this.value.substring(0, 200)"
													placeholder="最多可输入200字"></textarea>
												<span id="text-count2" value="">0</span>/200
											</p>
											<input class="mainBtn" type="submit" name="" value="发送">
												</form>
										</div>
										<!-- /.col-md-8 -->
										<div class="col-md-4">
											<div class="information">
												<h3 class="widget-title">信息</h3>
												<ul class="our-location">
													<li><span><i class="fa fa-map-marker"></i>地址:</span>河北师范大学软件学院</li>
													<li><span><i class="fa fa-map-marker"></i>电话:</span>17731139669</li>
													<li><span><i class="fa fa-map-marker"></i>邮箱:</span><a
														href="mailto:info@company.com">ODLW@outlook.com</a></li>
												</ul>
											</div>
											<!-- /.information -->
											<div class="google-map">
												<h3 class="widget-title">我们的位置</h3>
												<div class="contact-map">
													<div class="google-map-canvas" id="map-canvas"
														style="height: 200px;"></div>
												</div>
												<!-- /.contact-map -->
											</div>
											<!-- /.google-map -->
										</div>
										<!-- /.col-md-4 -->
									</div>
									<!-- /.row -->
								</div>
								<!-- /.content-inner -->

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
    <script type="text/javascript">
    
    //字数限制
    window.onload = function() {
    //（jquery）
        $('#message').keyup(function() {
        var len=this.value.length
                    $('#text-count2').text(len);

        })
    }
	</script>
</body>
</html>