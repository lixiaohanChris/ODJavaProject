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
	var Gid  = document.getElementById ;
	var showArea = function(){
		Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" + 	
		Gid('s_city').value + " - 县/区" + 
		Gid('s_county').value + "</h3>"
								}
	Gid('s_county').setAttribute('onchange','showArea()');
</script>
</head>
<body>
	<table border="1">
		<tr>
			<td>用户姓名：</td>
			<td>${sessionScope.userName }</td>
		</tr>
	</table>
	<form  name="reg_testdate" action="info/addInfo">
		体重：<input type="text" name="weight"/></br>
		身高：<input type="text" name="height"/></br>
		<!-- 生日  -->
		生日：
		<select name="YYYY" onchange="YYYYDD(this.value)">
    		<option value="">请选择 年</option>
  		</select>
  		<select name="MM" onchange="MMDD(this.value)">
    		<option value="">选择 月</option>
  		</select>
  		<select name="DD">
    		<option value="">选择 日</option>
  		</select></br>
  		<!-- 城市 -->
  		<div class="info">
			<div>
				城市：
				<select id="s_province" name="s_province"></select>&nbsp;&nbsp;
				<select id="s_city" name="s_city" ></select>&nbsp;&nbsp;
				<select id="s_county" name="s_county"></select>
				<script class="resources library" src="js/area.js" type="text/javascript"></script>
		  		<script type="text/javascript">_init_area();</script>
    		</div>
    		<div id="show"></div>
		</div>
		<!-- 运动基础  -->
		运动基础：
		<input type="radio" name="sports_base" value="0基础"/>0
		<input type="radio" name="sports_base" value="1基础"/>1
		<input type="radio" name="sports_base" value="2基础"/>2</br>
		<!-- 运动目标 -->
		运动目标：
		<input type="checkbox" name="targetList" value="减脂">减脂
		<input type="checkbox" name="targetList" value="局部塑形">局部塑形
		<input type="checkbox" name="targetList" value="增肌">增肌
		<input type="checkbox" name="targetList" value="保持健康">保持健康</br>
		<!-- 兴趣爱好 -->
		兴趣爱好：
		<input type="checkbox" name="hobbyList" value="健身">健身
		<input type="checkbox" name="hobbyList" value="瑜伽">瑜伽
		<input type="checkbox" name="hobbyList" value="跑步">跑步 
		<input type="checkbox" name="hobbyList" value="骑行">骑行 
		<input type="checkbox" name="hobbyList" value="行走">行走 
		<input type="checkbox" name="hobbyList" value="其他">其他 
		<input type="checkbox" name="hobbyList" value="暂无">暂无  </br>
		肥胖指数：
		<input type="text" name="fat_level"/></br>
		<input type="submit" value="提交">
	</form>

</body>
</html>