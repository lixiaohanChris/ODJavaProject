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
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/alert/zeroModal.css" />
<script src="js/alert/zeroModal.min.js"></script>
</head>
<body>
	<a href="course/courseTypeShow">测试</a>
	<c:forTokens items="${sessionScope.user.information.target }" delims="," var="t">
  								<p>${t }</p>
  								
  							 <c:if test="${t=='减脂' }">
  									<c:set var="target1" value="checked"/>
  								</c:if>
  								<c:if test="${t==局部塑形 }">
  									<c:set var="target2" value="checked"/>
  								</c:if>
  								<c:if test="${t==增肌 }">
  									<c:set var="target3" value="checked"/>
  								</c:if>
  								<c:if test="${t==保持健康  }">
  									<c:set var="target4" value="checked"/>
  								</c:if> 
  							</c:forTokens>
  							${target1 }
</body>
</html>