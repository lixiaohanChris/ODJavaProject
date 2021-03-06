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
    <title>OD减肥</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="apple-touch-icon-precomposed" href="backstagemanager/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="backstagemanager/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="backstagemanager/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="backstagemanager/assets/css/app.css">
    <script src="backstagemanager/assets/js/jquery.min.js"></script>
    <script src="backstagemanager/assets/js/courseAjax.js"></script>
</head>

<body data-type="widgets">
	<!-- header -->
	<%@include file="header.jsp" %>
	<!-- 内容区域 -->
		<div class="tpl-content-wrapper">
            <div class="row-content am-cf">
                <div class="row">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title  am-cf">课程列表</div>
							</div>
                            <div class="widget-body  am-fr">

                                <div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
                                    <div class="am-form-group">
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs">
                                                <a href="course/backstage/courseInsert?courseTypeId=${courseTypeId }"><button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增</button></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
					       		<div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
					          	<%--   <div class="am-form-group tpl-table-list-select">
					            	   <select data-am-selected="{btnSize: 'sm'}">
					                   <c:forEach items="${courseTypes }" var="c">
					                   <a href=""><option value="${c.id }">${c.typename }</option></a>
									   </c:forEach>
									   </select>
					                   </div> --%>
					       		</div>
					       		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3" style="position:absolute;left:70%">
					            	<div class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
					                	<input type="text" class="am-form-field ">
					                    	<span class="am-input-group-btn">
					   							<button class="am-btn  am-btn-default am-btn-success tpl-table-list-field am-icon-search" type="button"></button>
					 						</span>
					                </div>
					            </div>
								<div class="am-u-sm-12" id="dataBody">
					      			<table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black ">
					          			<thead>
					              			<tr>
					                  			<th>课程缩略图</th>
					                  			<th>课程名称</th>
					                  			<th>课程介绍</th>
					                 			<th>发布时间</th>
					                  			<th>最后修改时间</th>
					                  			<th>操作</th>
					              			</tr>
					          			</thead>
					          			<tbody>
					          				<c:forEach items="${courses }" var="c">
					  							<tr class="gradeX">
													<td>
														<a href="course/backstage/courseContentShow/header/${c.id }">
   	   														<img src="${c.img }" class="tpl-table-line-img" alt="${c.name }" onclick="toCourseContent(${c.id})">
   														</a>
					      							</td>
												  	<td class="am-text-middle"><a href="course/backstage/courseContentShow/header/${c.id }">${c.name }</a></td>
													<td class="am-text-middle">${c.introduce }</td>
													<td class="am-text-middle">${c.firsttime }</td>
													<td class="am-text-middle">${c.lasttime }间</td>
					      							<td class="am-text-middle">
					          							<div class="tpl-table-black-operation">
											             	<a href="course/backstage/courseUpdate?courseId=${c.id }">
											                	<i class="am-icon-pencil"></i> 编辑
											              	</a>
											              	<a href="course/backstage/courseDelete?courseId=${c.id }" class="tpl-table-black-operation-del">
											                  	<i class="am-icon-trash"></i> 删除
											              	</a>
					          							</div>
					      							</td>
												</tr>
											</c:forEach>
					          			</tbody>
					      			</table>
					  			</div>
					            <div class="am-u-lg-12 am-cf">
									<div class="am-fr">
					                	<ul class="am-pagination tpl-pagination">
					                    	<li>共有${pageData.totalCount }种课程</li>&nbsp;
					             			共<li id="totalpageNum">${pageData.totalPageNum }</li>页&nbsp;
					             			<li id="page"></li>
					                   		<li><a class="PageButton" type="${courseTypeId }" name="1">«</a></li>
					                   		<li><a class="toPage pre" type="${courseTypeId }" name="1">上一页</a></li>
					                   		<c:if test="${pageData.totalPageNum<=5 }">
					                   			<c:forEach begin="1" end="${pageData.totalPageNum }" step="1" varStatus="p">
					                   				<li><a class="PageButton" type="${courseTypeId }" name="${p.count }">${p.count }</a></li>                     
					                   			</c:forEach>
					                  		</c:if>
					                  		<c:if test="${pageData.totalPageNum>5 }">
					                   			<c:forEach begin="1" end="5" step="1" varStatus="p">
					               					<li><a class="PageButton" type="${courseTypeId }" name="${p.count }">${p.count }</a></li> 
					                   			</c:forEach>
					                  		</c:if>
								            <li><a class="toPage next" type="${courseTypeId }" name="2">下一页</a></li>
					     					<li><a class="PageButton" type="${courseTypeId }" name="${pageData.totalPageNum }">»</a></li>
					     					<li><input style="width:30px;height:30px" type="text" id="inputgo"/></li>
						     				<li><a id="GO">GO</a></li>
					               		</ul>
					           		</div>
       							</div>
   							</div>
   						</div>
       				</div>
        		</div>
        	</div>
        </div>
    <script src="backstagemanager/assets/js/amazeui.min.js"></script>
    <script src="backstagemanager/assets/js/app.js"></script>

</body>

</html>