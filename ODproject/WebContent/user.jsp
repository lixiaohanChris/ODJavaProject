<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<base href="<%=basePath%>">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title></title>
	<link rel="stylesheet" href="layui/css/layui.css">
	<link href="css/userinfo/demo.css" rel="stylesheet" type="text/css">
    <script src="js/userinfo/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="js/userinfo/jquery-ui.js" type="text/javascript"></script>
    <script src="js/userinfo/jquery.ffform.js" type="text/javascript"></script>
	<script src="layui/layui.js"></script>
	<style type="text/css">
		* {margin: 0;padding: 0;}
		#content {width: 900px;height: 600px;margin: 80px auto;border: 1px solid #ccc;border-radius: 15px;padding: 0 10px 0 10px;}
		select {display: inline-block;width: 130px;height: 35px;border-radius: 6px;border: 1px solid #ddd;}
	</style>
</head>
<body>
	<div id="content">
	<form class="contact" action="#" method="post" id="form">
		<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
		  <ul class="layui-tab-title">
		    <li class="layui-this">基本信息</li>
		    <li>兴趣爱好</li>
		    <li>身体情况</li>
		  </ul>
		  <div class="layui-tab-content">
		    <div class="layui-tab-item layui-show">
		    	<div class="container">
		            <div class="row clearfix">
		                <div class="lbl">
		                    <label for="name">姓名</label>
		                </div>
		                <div class="ctrl">
		                    <input type="text" id="name" name="name" data-required="true" data-validation="text"
		                        data-msg="Invalid Name" placeholder="">
		                </div>
		            </div>
		            <div class="row clearfix">
		                <div class="lbl">
		                    <label for="birth">生日</label>
		                </div>
		                <div class="ctrl">
		                    <input type="text" id="birth" name="birth" data-required="true" data-validation="birth"
		                        data-msg="Invalid birth" placeholder="">
		                </div>
		            </div>
		            <div class="row clearfix">
		                <div class="lbl">
		                    <label for="s_province">城市</label>
		                </div>
		                <div class="ctrl">
		                    <select id="s_province" name="s_province"></select>&nbsp;&nbsp;
							<select id="s_city" name="s_city" ></select>&nbsp;&nbsp;
							<select id="s_county" name="s_county"></select>
							<script class="resources library" src="js/area.js" type="text/javascript"></script>
					  		<script type="text/javascript">_init_area();</script>
		                </div>
		            </div>
		            <div class="row  clearfix">
		                <div class="span10 offset2">
		                    <input type="submit" name= "submit" id="submit" class="submit" value="提  交">
		                </div>
		            </div>
		        </div>
		    </div>
		    <div class="layui-tab-item">
		    	<div class="container">
		            <div class="row clearfix">
		                <div class="lbl">
		                    <label for="name">兴趣爱好</label>
		                </div>
		                <div class="ctrl">
		                	<select name="hobbyList">
		                		<option value="健身">健身</option>
		                		<option value="瑜伽">瑜伽</option>
		                		<option value="跑步 ">跑步 </option>
		                		<option value="骑行">骑行</option>
		                		<option value="行走">行走</option>
		                		<option value="其他">其他</option>
		                		<option value="暂无">暂无</option>
		                	</select>
		                </div>
		            </div>
		            <div class="row  clearfix">
		                <div class="span10 offset2">
		                    <input type="submit" name="submit" id="submit" class="submit" value="提  交">
		                </div>
		            </div>
		        </div>
		    </div>
		    <div class="layui-tab-item">
		    	<div class="container">
		            <div class="row clearfix">
		                <div class="lbl">
		                    <label for="name">体重</label>
		                </div>
		                <div class="ctrl">
		                    <input type="text" id="weight" name="weight" data-required="true" data-validation="text"
		                        data-msg="Invalid weight" placeholder="">
		                </div>
		            </div>
		            <div class="row clearfix">
		                <div class="lbl">
		                    <label for="email">身高</label>
		                </div>
		                <div class="ctrl">
		                    <input type="text" id="height" name="height" data-required="true" data-validation="height"
		                        data-msg="Invalid height" placeholder="">
		                </div>
		            </div>
		            <div class="row clearfix">
		                <div class="lbl">
		                    <label for="fat_level">肥胖指数</label>
		                </div>
		                <div class="ctrl">
		                    <input type="text" id="fat_level" name="fat_level" data-required="true" data-validation="fat_level"
		                        data-msg="Invalid fat_level" placeholder="">
		                </div>
		            </div>
		            <div class="row clearfix">
		                <div class="lbl">
		                    <label for="name">运动基础</label>
		                </div>
		                <div class="ctrl">
		                	<select name="sports_base">
		                		<option value="0基础">0</option>
		                		<option value="1基础">1</option>
		                		<option value="2基础 ">2 </option>
		                	</select>
		                </div>
		            </div>
		            <div class="row clearfix">
		                <div class="lbl">
		                    <label for="name">运动目标</label>
		                </div>
		                <div class="ctrl">
		                	<input type="checkbox" name="targetList" value="减脂">&nbsp;减脂&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="checkbox" name="targetList" value="局部塑形">&nbsp;局部塑形&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="checkbox" name="targetList" value="增肌">&nbsp;增肌&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="checkbox" name="targetList" value="保持健康">&nbsp;保持健康
		                </div>
		            </div>
		            <div class="row  clearfix">
		                <div class="span10 offset2">
		                    <input type="submit" name="submit" id="submit" class="submit" value="提  交">
		                </div>
		            </div>
		        </div>
		    </div>
		  </div>
		</div>
		</form>
	</div>
	
	
	 
	<script>
	//注意：选项卡 依赖 element 模块，否则无法进行功能性操作
	layui.use('element', function(){
	  var element = layui.element;
	  
	});
	</script>
	
	
	
</body>
</html>