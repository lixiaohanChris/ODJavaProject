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
    <script src="backstagemanager/assets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="backstagemanager/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="backstagemanager/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="backstagemanager/assets/css/app.css">
    <script src="backstagemanager/assets/js/jquery.min.js"></script>
    <script src="backstagemanager/assets/js/ajaxfileupload.js"></script>

<script>
	$(document).ready(function(){
		$("#doc-form-file").live("change",function(){
			$.ajaxFileUpload({
				url:'course/backstage/imgAjax',
				secureuri:false,
				dataType: 'json', //返回值类型 一般设置为json
				fileElementId:'doc-form-file',
				success:function (data,status){
					$("#realPic").attr("src", "images/"+data.real); 
				},
				error: function (data, status, e)//服务器响应失败处理函数
                {
					alert("b");
                }
			})
			$("#doc-form-file").replaceWith('<input id="doc-form-file" type="file" name="imgPath" title="+count+"/>');
		})
	})
</script>
</head>
<body>
	<!-- header -->
	<%@include file="header.jsp" %>
	<div class="tpl-content-wrapper">
		<div class="container-fluid am-cf">
        	<div class="row">
            	<div class="am-u-sm-12 am-u-md-12 am-u-lg-9">
                    <div class="page-header-heading">
                    <button type="button" id="aaa">test</button>
                    	<span class="am-icon-home page-header-heading-icon">
                    	</span> Form 
                    	<small>CourseType</small>
                    </div>
                    <p class="page-header-description">CourseType Form 课程类型</p>
                </div>
                <div class="am-u-lg-3 tpl-index-settings-button">
                    <button type="button" class="page-header-button"><span class="am-icon-paint-brush"></span> 设置</button>
                </div>
            </div>
		</div>
		<div class="row-content am-cf">
			<div class="row">
				<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                   <div class="widget am-cf">
                       <div class="widget-head am-cf">
                           <div class="widget-title am-fl">CourseTypeForm</div>
                           <div class="widget-function am-fr">
                               <a href="javascript:;" class="am-icon-cog"></a>
                           </div>
                       </div>
                       <div class="widget-body am-fr">
					   <form class="am-form tpl-form-border-form"  action="course/backstage/CourseTypeInsert" method="post" enctype="multipart/form-data">
                       		<div class="am-form-group">
                            	<label for="type-name" class="am-u-sm-12 am-form-label am-text-left">类型名称<span class="tpl-form-line-small-title">&nbsp;TypeName</span></label>
                                	<div class="am-u-sm-12">
	                                    <input type="text" class="tpl-form-input am-margin-top-xs" name="typename" placeholder="请输入类型名称">
	                                    <small>请填写类型名称10字左右。</small>
                                    </div>
                           	</div>
							<div class="am-form-group">
                            	<label for="user-email" class="am-u-sm-12 am-form-label am-text-left">发布时间
                            		<span class="tpl-form-line-small-title">Time</span>
                            	</label>
                               	<div class="am-u-sm-12">
                                	<input type="text" class="am-form-field tpl-form-no-bg am-margin-top-xs" name="firsttime" placeholder="发布时间" data-am-datepicker="" readonly="">
                                    <small>发布时间为必填</small>
                                </div>
                            </div>
							
							<div class="am-form-group">
                            	<label class="am-u-sm-12 am-form-label  am-text-left">类型描述
                            		<span class="tpl-form-line-small-title">Describe</span>
                            	</label>
                                <div class="am-u-sm-12">
                                	<input type="text" class="am-margin-top-xs" name="description" placeholder="输入Describe">
                                </div>
                            </div>
							<div class="am-form-group">
	                            <label for="user-weibo" class="am-u-sm-12 am-form-label  am-text-left">封面图
	                            	<span class="tpl-form-line-small-title">Images</span>
	                            </label>
	                            <div class="am-u-sm-12 am-margin-top-xs">
		                            <div class="am-form-group am-form-file">
		                            	<div class="tpl-form-file-">
			                            	<img id="realPic" src="" alt="">
			                            </div>
                            			<button type="button" id="test2" class="am-btn am-btn-danger am-btn-sm ">
    										<i class="am-icon-cloud-upload"></i> 添加封面图片
    									</button>
                            			<input id="doc-form-file" type="file" name="imgPath">
                            			
                            		</div>
								</div>
                            </div>
                            
				 			<div class="am-form-group">
                            	<label for="user-intro" class="am-u-sm-12 am-form-label  am-text-left">隐藏</label>
                                <div class="am-u-sm-12">
                                    <div class="tpl-switch">
                                        <input type="checkbox" class="ios-switch bigswitch tpl-switch-btn am-margin-top-xs" checked="">
                                        <div class="tpl-switch-btn-view">
                                        	<div>
                                            </div>
                                        </div>
                                    </div>
								</div>
                            </div>
							<div class="am-form-group">
                                <label for="user-intro" class="am-u-sm-12 am-form-label  am-text-left">管理日志</label>
                                <div class="am-u-sm-12 am-margin-top-xs">
                                	<textarea class="" rows="10" id="user-intro" placeholder=""></textarea>
                                </div>
                            </div>
							<div class="am-form-group">
                            	<div class="am-u-sm-12 am-u-sm-push-12">
                                	<button type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
                                </div>
                            </div>
                      </form>
               	  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
    
    <script src="backstagemanager/assets/js/amazeui.min.js"></script>
    <script src="backstagemanager/assets/js/amazeui.datatables.min.js"></script>
    <script src="backstagemanager/assets/js/dataTables.responsive.min.js"></script>
    <script src="backstagemanager/assets/js/app.js"></script>
</body>
</html>