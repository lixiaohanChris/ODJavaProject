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
<script src="js/birth.js"></script>
<title>Insert title here</title>
<style>
	button{
		border:1px solid #ccc;
		cursor:pointer;
 		display:block;
 		margin:auto;
	 	position:relative;
 		top:100px;
	}
</style>
<script type="text/javascript">
	$('.btn-loading-example').click(function () {
		  var $btn = $(this)
		  $btn.button('loading');
		    setTimeout(function(){
		      $btn.button('reset');
		  }, 5000);
		});
</script>
</head>
<body>
	<button type="button" class="am-btn am-btn-primary btn-loading-example">Submit - Button</button>
	<input type="button" class="am-btn am-btn-primary btn-loading-example" value="Submit - Input" />
</body>
</html>