<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<base href="<%=basePath%>">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="backstagemanager/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="backstagemanager/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="backstagemanager/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="backstagemanager/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="backstagemanager/assets/css/app.css">
    <script src="backstagemanager/assets/js/jquery.min.js"></script>
	
</head>

<body data-type="widgets">
	<!-- CourseTypeList -->
	<div class="am-u-sm-12" id="test">
    	<table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black ">
        	<thead>
            	<tr>
                	<th>课程类型缩略图</th>
                   	<th>课程类型</th>
                   	<th>类型描述</th>
                   	<th>发布时间</th>
                  	<th>最后修改时间</th>
                   	<th>操作</th>
               	</tr>
           	</thead>
  	   	   	<tbody>
           		<c:forEach items="${courseTypes }" var="c">
           			<tr class="gradeX">
                   		<td>
                       		<img src="${c.imgPath }" class="tpl-table-line-img" alt="">
                   		</td>
                   		<td class="am-text-middle">${c.typename }</td>
                   		<td class="am-text-middle">${c.description }</td>
                   		<td class="am-text-middle">${c.firsttime }</td>
                   		<td class="am-text-middle">${c.lasttime }</td>
                   		<td class="am-text-middle">
                       		<div class="tpl-table-black-operation">
                        		<a href="javascript:;">
                               		<i class="am-icon-pencil"></i> 编辑
                           		</a>
                           		<a href="javascript:;" class="tpl-table-black-operation-del">
                               		<i class="am-icon-trash"></i> 删除
                           		</a>
                       		</div>
                   		</td>
               		</tr>
              	</c:forEach>
           </tbody>
       </table>
   </div>
   
   <script src="backstagemanager/assets/js/amazeui.min.js"></script>
   <script src="backstagemanager/assets/js/app.js"></script>

</body>

</html>