<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header id="fh5co-header-section">
		<div class="container">
			<div class="nav-header">
				<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle">
					<i></i>
				</a>
				<h1 id="fh5co-logo">
					<a href="index.jsp">OD
						<span>减肥</span>
					</a>
				</h1>
				
				<!-- START #fh5co-menu-wrap -->
				<nav id="fh5co-menu-wrap" role="navigation">
					<ul class="sf-menu" id="fh5co-primary-menu">
						<li><a href="index.jsp">首页</a></li>
						<li>
							<a href="classes.jsp" class="fh5co-sub-ddown">课程表</a>
							<ul class="fh5co-sub-menu">
							 	<li><a href="left-sidebar.html">身体战斗</a></li>
							 	<li><a href="right-sidebar.html">瑜伽课程</a></li>
								<li>
									<a href="#" class="fh5co-sub-ddown">自行车运动</a>
									
								</li>
								<li><a href="#">拳击健身</a></li>
								<li><a href="#">游泳运动</a></li>
								<li><a href="#">仰卧起坐</a></li> 
							</ul>
						</li>
						<li>
							<a href="schedule.jsp">时间表</a>
						</li>
						
						<li><a href="about.jsp">关于我们</a></li>
						<li><a href="contact.jsp">联系我们</a></li>
						<c:if test="${sessionScope.user.email==null }">
							<li><a href="login.jsp"><p class="icon-user3">登录/注册</p></a></li>
						</c:if>
						<c:if test="${sessionScope.user.email!=null }">
							<li><a href="info.jsp"><p class="icon-user3">${sessionScope.user.username }，您好</p></a></li>
							<li><a href="user/userExit"><p class="icon-user3">注销</p></a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</header>	
</body>
</html>