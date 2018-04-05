<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<base href="<%=basePath%>">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>登陆</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" href="css/loginRegister/style.css" />

<body>
<a href="index.jsp">
	<h1 style="position:absolute;top:20px;left:5px;color:white">Back Home</h1>
</a>
<div class="login-container">
	<h1>登   录</h1>
	
	<div class="connect">
		<p>Let's start the trip</p>
	</div>
	
	<div class="connect">
		<p>${right }</p>
	</div>
	
	<!-- 登陆表单 -->
	<form action="user/userLogin" method="post" id="loginForm">
		<div>
			<input type="email" name="email" class="email" placeholder="输入邮箱地址" oncontextmenu="return false" onpaste="return false" value="${email }"/>
		</div>
		<div>
			<input type="password" name="password" class="password" placeholder="密码" oncontextmenu="return false" onpaste="return false" value="${password }" />
		</div><br></br>
		<div style="color:red">
			<p>${loginError }</p>
			<p>${NotLogged }</p>
			<p>${loginS }</p>
		</div>
		<button id="submit" type="submit">登 录</button>
	</form>

	<a href="register.jsp">
		<button type="button" class="register-tis">还有没有账号？</button>
	</a>

</div>

<script src="js/loginRegister/jquery.min.js"></script>
<script src="js/loginRegister/loginAjax.js"></script>
<!--背景图片自动更换-->
<script src="js/loginRegister/supersized.3.2.7.min.js"></script>
<script src="js/loginRegister/supersized-init.js"></script>
<!--表单验证-->
<script src="js/loginRegister/jquery.validate.min.js?var1.14.0"></script>

</body>
</html>