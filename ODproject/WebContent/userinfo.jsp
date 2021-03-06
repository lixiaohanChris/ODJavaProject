<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<base href="<%=basePath%>">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport"
        content="width=device-width, initial-scale=1">
  <title>Amaze UI Examples</title>

  <!-- Set render engine for 360 browser -->
  <meta name="renderer" content="webkit">

  <!-- No Baidu Siteapp-->
  <meta http-equiv="Cache-Control" content="no-siteapp"/>

  <link rel="icon" type="image/png" href="assets/i/favicon.png">

  <!-- Add to homescreen for Chrome on Android -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="icon" sizes="192x192" href="assets/i/app-icon72x72@2x.png">

  <!-- Add to homescreen for Safari on iOS -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">

  <!-- Tile icon for Win8 (144x144 + tile color) -->
  <meta name="msapplication-TileImage" content="assets/i/app-icon72x72@2x.png">
  <meta name="msapplication-TileColor" content="#0e90d2">

  <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
  <!--
  <link rel="canonical" href="http://www.example.com/">
  -->
  
  <link rel="stylesheet" href="assets/css/amazeui.min.css">
  <link rel="stylesheet" href="assets/css/app.css">
  <link href="assets/css/amazeui.chosen.css" rel="stylesheet" />
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/amazeui.chosen.js"></script>
  <script src="assets/js/amazeui.min.js"></script>
  <script src="assets/js/region.js"></script>
  <script src="assets/js/app.js"></script>
  <script src="assets/js/ajax.js"></script>
  <!-- alert -->
  <script src="js/alert/zeroModal.min.js"></script>
  <script src="js/alert/mustache.js"></script>
  <script src="js/alert/zeroModal.js"></script>
  
</head>

<body style="overflow: hidden;position:relative;left:-10px;">
<script>
	$(document).ready(function(){
		$("#button1").click(function(){
			$("#target2").click();
		})
		$("#button3").click(function(){
			$("#target3").click();
		})
		$("#button2").click(function(){
			window.parent.location.replace("index.jsp")
		})
		$("#button4").click(function(){
			window.parent.location.replace("index.jsp")
		})
		$("#button6").click(function(){
			window.parent.location.replace("index.jsp")
		})
	}) 
		

</script>
	<form action="info/userInfo" id="userInfoForm" method="post" onSubmit="return ajaxSubmit()">
	<div data-am-widget="tabs" class="am-tabs am-tabs-d2"  style="width:100%;position:relative;z-index:0">
     	<ul class="am-tabs-nav am-cf">
        	<li class="am-active"><a href="[data-tab-panel-0]" id="target1">个人信息</a></li>
        	<li class=""><a href="[data-tab-panel-1]" id="target2">选择习惯</a></li>
          	<li class=""><a href="[data-tab-panel-2]" id="target3">完成</a></li>
      	</ul>
      	<div class="am-tabs-bd">
          	<div data-tab-panel-0 class="am-tab-panel am-active">
					<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:95%;">
	    				<h2 class="am-titlebar-title " style="width:30%;">
	        				姓名：
	    				</h2>
						<input type="text" value="${userinfo.name }" placeholder="请输入姓名" name="name" style="width:70%;">
		 			</div>
		 			<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:95%;">
	    				<h2 class="am-titlebar-title"  style="width:30%;">
	        				性别:
	    				</h2>
						<div class="am-btn-group doc-js-btn-1" data-am-button  style="width:70%;">
							<c:set var="t" value="${userinfo.sex }"/>
	  							<c:if test="${t=='男' }">
	  								<c:set var="sex1" value="checked"/>
  								</c:if>
  								<c:if test="${t=='女' }">
  									<c:set var="sex2" value="checked"/>
  								</c:if>
							<label class="am-btn am-btn-primary">
								<input type="radio" name="sex" value="男" id="option1" ${sex1 }>男
							</label>
							<label class="am-btn am-btn-primary">
				    			<input type="radio" name="sex" value="女" id="option2" ${sex2 }>女
							</label>
						</div>
		 			</div>
		 			<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:95%;">
	    				<h2 class="am-titlebar-title"  style="width:30%;">
	        				生日：
	    				</h2>
						<div class="am-btn-group doc-js-btn-1" data-am-button  style="width:70%;">
							<p><input type="text" value="${userinfo.birthday }" name="birthday" class="am-form-field" placeholder="选择生日" data-am-datepicker="{theme: }" /></p>
						</div>
					</div>
					<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:95%;">
	    				<h2 class="am-titlebar-title"  style="width:25%;">
	        				城市：
	    				</h2>
	    				
	    				<h2 id="errorp" style="color:#dd514c;width:5%"></h2>	
						<div class="am-btn-group doc-js-btn-1" data-am-button  style="width:70%;">
							<select data-placeholder="请选择省" name="province" class="province" style="width:32%" tabindex="3">
            					<option value=""></option>
            				</select>
        					<select data-placeholder="请选择市" name="city" class="city" style="width:32%" tabindex="3">
            					<option value=""></option>
							</select>
					        <select data-placeholder="请选择区/县" name="area" class="area" style="width:32%" tabindex="3">
					            <option value=""></option>
							</select>
						</div>
					</div>
					<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:95%;">
	    				<h2 class="am-titlebar-title " style="width:30%;">
	        				身高：
	    				</h2>
						<input type="text" value="${userinfo.height }" placeholder="请输入身高（cm）" name="height" style="width:70%;">
		 			</div>
					<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:95%;">
	    				<h2 class="am-titlebar-title " style="width:30%;">
	        				体重：
	    				</h2>
						<input type="text" value="${userinfo.weight }" placeholder="请输入体重（kg）" name="weight" style="width:70%;">
		 			</div>
		 			<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:95%;">
	    				<h2 class="am-titlebar-title " style="width:30%;">
	        				bmi指数：
	    				</h2>
						<button class="am-btn am-btn-primary  am-disabled" data-am-popover="{content: 'fit指数计算公式', trigger: 'hover focus'}">
  							${userinfo.bmi }
						</button>
		 			</div>
		 			<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:95%;">
	    				<h2 class="am-titlebar-title " style="width:30%;">
	        				肥胖程度：
	    				</h2>
						<button class="am-btn am-btn-primary  am-disabled" data-am-popover="{content: '体质列表', trigger: 'hover focus'}">
  							${userinfo.fat_level }
						</button>
		 			</div>
		 			<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:95%">
	    				<button type="button" id="button1" style="position:relative;left:33%;bottom:5px;z-index:1" class="am-btn am-btn-primary" data-am-popover="{content: '选择你的运动习惯', trigger: 'hover focus'}">
							下一步
						</button>
						<button type="button" id="button2" style="position:relative;left:33%;bottom:5px;z-index:1" class="am-btn am-btn-primary" data-am-popover="{content: '点击取消将跳转首页', trigger: 'hover focus'}">
							取&nbsp;&nbsp;&nbsp;&nbsp;消
						</button>
		 			</div>
          	</div>
          	<div data-tab-panel-1 class="am-tab-panel ">
          			<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:98%;">
	    				<h1 style="color:#00E3E3">良好的习惯是减肥开始的第一步</h1>
		 			</div>
					<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:98%;">
	    				<h2 class="am-titlebar-title " style="width:23%;">
	        				运动基础:
	    				</h2>
						<div class="am-btn-group doc-js-btn-1" data-am-button style="width:77%;">
						  	<c:forTokens items="${userinfo.sports_base }" delims="," var="t">
  								<c:if test="${t=='零基础' }">
  									<c:set var="sports_base1" value="checked"/>
  								</c:if>
  								<c:if test="${t=='有点基础' }">
  									<c:set var="sports_base2" value="checked"/>
  								</c:if>
  								<c:if test="${t=='健身达人' }">
  									<c:set var="sports_base3" value="checked"/>
  								</c:if>
  							</c:forTokens>
							<label class="am-btn am-btn-primary">
						    	<input type="radio" name="sports_base" value="零基础" id="option1" ${sports_base1 }> 零基础 
						  	</label>
						  	<label class="am-btn am-btn-primary">
						    	<input type="radio" name="sports_base" value="有点基础" id="option2" ${sports_base2 }> 有点基础
						  	</label>
						  	<label class="am-btn am-btn-primary">
						    	<input type="radio" name="sports_base" value="健身达人" id="option3" ${sports_base3 }> 健身达人
						  	</label>
						</div>
		 			</div>
		 			<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:98%;">
	    				<h2 class="am-titlebar-title"  style="width:23%;">
	        				运动目标:	
	    				</h2>
						<div class="am-btn-group" data-am-button  style="width:77%;">
  							<!--默认选中状态设置-->
  							<c:forTokens items="${userinfo.target }" delims="," var="t">
  								<c:if test="${t=='减脂' }">
  									<c:set var="target1" value="checked"/>
  								</c:if>
  								<c:if test="${t=='局部塑形' }">
  									<c:set var="target2" value="checked"/>
  								</c:if>
  								<c:if test="${t=='增肌' }">
  									<c:set var="target3" value="checked"/>
  								</c:if>
  								<c:if test="${t=='保持健康' }">
  									<c:set var="target4" value="checked"/>
  								</c:if>
  							</c:forTokens>
							
  							<label class="am-btn am-btn-primary">
    							<input type="checkbox" class="needsclick" name="target" ${target1 } value="减脂" /> 减脂
							</label>
							<label class="am-btn am-btn-primary">
							    <input type="checkbox" class="needsclick" name="target" ${target2 } value="局部塑形"> 局部塑形
							</label>
							<label class="am-btn am-btn-primary">
							    <input type="checkbox" class="needsclick" name="target" ${target3 } value="增肌"> 增肌
							</label>
							<label class="am-btn am-btn-primary">
							    <input type="checkbox" class="needsclick" name="target" ${target4 } value="保持健康"> 保持健康
							</label>
						</div>
		 			</div>
		 			<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:98%;">
	    				<h2 class="am-titlebar-title"  style="width:23%;">
	        				兴趣爱好:
	    				</h2>
						<div class="am-btn-group" data-am-button  style="width:77%;">
  							<!--默认选中状态设置-->
  							<c:forTokens items="${userinfo.hobby }" delims="," var="t">
  								<c:if test="${t=='健身' }">
  									<c:set var="hobby1" value="checked"/>
  								</c:if>
  								<c:if test="${t=='瑜伽' }">
  									<c:set var="hobby2" value="checked"/>
  								</c:if>
  								<c:if test="${t=='跑步' }">
  									<c:set var="hobby3" value="checked"/>
  								</c:if>
  								<c:if test="${t=='骑行' }">
  									<c:set var="hobby4" value="checked"/>
  								</c:if>
  								<c:if test="${t=='其他' }">
  									<c:set var="hobby5" value="checked"/>
  								</c:if>
  							</c:forTokens>
  							<label class="am-btn am-btn-primary">
    							<input type="checkbox" class="needsclick" name="hobby" value="健身" ${hobby1 }>健身
							</label>
							<label class="am-btn am-btn-primary">
							    <input type="checkbox" class="needsclick" name="hobby" value="瑜伽" ${hobby2 }>瑜伽
							</label>
							<label class="am-btn am-btn-primary">
							    <input type="checkbox" class="needsclick" name="hobby" value="跑步" ${hobby3 }>跑步
							</label>
							<label class="am-btn am-btn-primary">
							    <input type="checkbox" class="needsclick" name="hobby" value="骑行" ${hobby4 }>骑行
							</label>
							<label class="am-btn am-btn-primary">
							    <input type="checkbox" class="needsclick" name="hobby" value="其他" ${hobby5 }>其他
							</label>
						</div>
					</div>
					<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:98%;">
	    				<button type="button" id="button3" style="position:relative;left:33%;bottom:5px;z-index:1" onclick="_target()" class="am-btn am-btn-primary" data-am-popover="{content: '选择资料公开度', trigger: 'hover focus'}">
							下一步
						</button>
						<button type="button" id="button4" style="position:relative;left:33%;bottom:5px;z-index:1" onclick="_target()" class="am-btn am-btn-primary" data-am-popover="{content: '取消将跳转至首页', trigger: 'hover focus'}">
							取&nbsp;&nbsp;&nbsp;&nbsp;消
						</button>
		 			</div>
          	</div>
          	<div data-tab-panel-2 class="am-tab-panel ">
          		<h1 style="color:#00E3E3">请选择是否公开个人信息</h1>
          		<h2 class="am-titlebar-title " style="width:23%;">
        			是否公开:
   				</h2>
				<div class="am-btn-group doc-js-btn-1" data-am-button style="width:77%;">
					<c:set var="t" value="${userinfo.openness }"/>
  						<c:if test="${t==1 }">
  							<c:set var="openness1" value="checked"/>
  						</c:if>
  						<c:if test="${t==0 }">
  							<c:set var="openness2" value="checked"/>
  						</c:if>
					<label class="am-btn am-btn-primary">
				    	<input type="radio" name="openness" value="1" id="option1" ${openness1 }> 公开 
				  	</label>
				  	<label class="am-btn am-btn-primary">
				    	<input type="radio" name="openness" value="2" id="option2" ${openness2 }> 隐藏
				  	</label>
				</div>
          		<div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="width:90%;">
          			<button type="submit" id="button5" style="position:relative;left:33%;bottom:5px;z-index:1" onclick="_target()" class="am-btn am-btn-primary" data-am-popover="{content: '保存信息', trigger: 'hover focus'}">
						确&nbsp;&nbsp;&nbsp;&nbsp;认
					</button>
					<button type="button" id="button6" style="position:relative;left:33%;bottom:5px;z-index:1" onclick="_target()" class="am-btn am-btn-primary" data-am-popover="{content: '取消将跳转至首页', trigger: 'hover focus'}">
						取&nbsp;&nbsp;&nbsp;&nbsp;消
					</button>
		 		</div>
          	</div>
      	</div>
  	</div>
  		
	</form> 
    
</body>
</html>
