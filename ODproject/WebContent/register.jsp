<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<base href="<%=basePath%>">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>注册</title>
<link rel="stylesheet" href="css/loginRegister/style.css" />
<!-- alert js and css -->
<link rel="stylesheet" type="text/css" href="css/alert/zeroModal.css" />
<script>
	    function verificationCode(id){
	    	$.ajax({
				ansyc:false,
				url:"user/verificationCode?email="+$("#email").val(),
				type:'post',
				success : function (data){
					alert('发送成功')
				},
				error : function (data){
					alert('b');
					alert(data);
					alert($("#email").val())
				}
			})
		}
	    </script>
</head>
<body onload="openInfo()">
<a href="index.jsp">
	<h1 style="position:absolute;top:20px;left:5px;color:white">Back Home</h1>
</a>
<div class="register-container">
	<h1>注   册</h1>
	<div class="connect">
		<p>Link the world. Share to world.</p>
	</div>
	<div class="connect" style="color:#F00">
		<p>${error }</p>
		<p>${success }</p>
	</div>
	
	<!-- 注册表单自动对应entity -->
	<form action="user/userRegist" method="post" id="registerForm">
		<div>
			<input type="text" name="username" class="username" placeholder="您的用户名" autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="password" class="password" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<input type="password" name="confirm_password" class="confirm_password" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<input type="text" name="phone_number" class="phone_number" placeholder="输入手机号码" autocomplete="off" id="number"/>
		</div>
		<div>
			<input type="email" name="email" id="email" class="email" placeholder="输入邮箱地址" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<input type="text" name="verification_code" class="verification_code" placeholder="输入验证码" oncontextmenu="return false" onpaste="return false" /><button type="button" onclick="verificationCode()">获取验证码</button>
		</div>
		<p><button id="submit" type="submit">注 册</button></p>
	</form>
	
	<a href="login.jsp">
		<p><button type="button" class="register-tis">已经有账号？</button></p>
	</a>
</div>

<script src="js/loginRegister/jquery.min.js"></script>
<script src="js/loginRegister/registAjax.js"></script>
<!--背景图片自动更换-->
<script src="js/loginRegister/supersized.3.2.7.min.js"></script>
<script src="js/loginRegister/supersized-init.js"></script>
<!--表单验证-->
<script src="js/loginRegister/jquery.validate.min.js?var1.14.0"></script>
<!-- alert -->
<script src="js/alert/zeroModal.min.js"></script>
<script src="js/alert/mustache.js"></script>
<script src="js/alert/zeroModal.js"></script>
</body>
</html>
<!--
本代码由js代码收集并编辑整理;
尊重他人劳动成果;
转载请保留js代码链接 - www.jsdaima.com
-->