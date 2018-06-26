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
    <script src="backstagemanager/assets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="backstagemanager/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="backstagemanager/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="backstagemanager/assets/css/app.css">
    <script src="backstagemanager/assets/js/jquery.min.js"></script>
 	<script src="backstagemanager/assets/js/courseForm.js"></script>
    <script src="backstagemanager/assets/js/jquery.validate.min.js"></script>
</head>
<body>
   	<!-- 弹窗 -->
	<button type="button" id="alertButton" class="am-btn am-btn-primary"
   	data-am-modal="{target: '#my-alert'}" style="display:none;"></button>
   	<!-- alert警告框 -->
   	<div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
    	<div class="am-modal-dialog">
           	<div class="am-modal-hd">Warning</div>
   		    <div class="am-modal-bd">
				请上传有效的图片
            </div>
            <div class="am-modal-footer">
               	<span class="am-modal-btn">确定</span>
       		</div>
       	</div>
   	</div>
   	<button type="button" class="am-btn am-btn-warning" id="doc-confirm-toggle" style="display:none;"></button>
   	<!-- alert确认框 -->
   	<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirm">
 			<div class="am-modal-dialog">
   			<div class="am-modal-hd">温馨提示</div>
   			<div class="am-modal-bd">
     				请确认你的操作
   			</div>
   			<div class="am-modal-footer">
   				<span class="am-modal-btn" data-am-modal-confirm>确定</span>
     				<span class="am-modal-btn" data-am-modal-cancel>取消</span>
     			</div>
 			</div>
	</div>
	<!-- header -->
	<%@include file="header.jsp" %>
	<div class="tpl-content-wrapper">
		
		<div class="container-fluid am-cf">
        	<div class="row">
            	<div class="am-u-sm-12 am-u-md-12 am-u-lg-9">
                    <div class="page-header-heading">
                    
                    	<span class="am-icon-home page-header-heading-icon">
                    	</span> Form 
                    	<small>Course</small>
                    </div>
                    <ol class="am-breadcrumb">
  						<li><a href="course/backstage/courseTypeUpdate?courseTypeId=${courseType.id }">${courseType.typename }</a></li>
  						<li><a href="#">${course.name }</a></li>
  						<li class="am-active">新增/修改课程</li>
					</ol>
                </div>
            </div>
		</div>
		<div class="row-content am-cf">
			<div class="row">
				<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                   <div class="widget am-cf">
                       <div class="widget-head am-cf">
                           <div class="widget-title am-fl">CourseForm</div>
                           <div class="widget-function am-fr">
                               <a href="javascript:;" class="am-icon-cog"></a>
                           </div>
                       </div>
                       
                       <div class="widget-body am-fr">
                       <c:if test="${course==null }">
                       		<form class="am-form tpl-form-border-form"  action="course/backstage/courseTypeInsert" method="post" id="insertCourseType" enctype="multipart/form-data">
                       </c:if>
					   <c:if test="${course!=null }">
					   		<form class="am-form tpl-form-border-form"  action="course/backstage/courseTypeUpdate?courseTypeId=${courseType.id }" method="post" enctype="multipart/form-data">
					   </c:if>
                       		<div class="am-form-group">
                            	<label for="type-name" class="am-u-sm-12 am-form-label am-text-left">课程名称<span class="tpl-form-line-small-title">&nbsp;CourseName</span></label>
                                	<div class="am-u-sm-12">
	                                    <input type="text" class="tpl-form-input am-margin-top-xs" name="name" value="${course.name }" placeholder="请输入类型名称" minlength="3" maxlength="15" required/>
	                                    <small>请填写课程名称最多15字</small>
                                    </div>
                           	</div>
                           	<!-- <div class="am-form-group">
                            	<label for="user-email" class="am-u-sm-12 am-form-label am-text-left">发布时间
                            		<span class="tpl-form-line-small-title">First Time</span>
                            	</label>
                               	<div class="am-u-sm-12">
                                	<input type="text" class="am-form-field tpl-form-no-bg am-margin-top-xs" name="firsttime" placeholder="发布时间" data-am-datepicker="" readonly>
                                    <small></small>
                                </div>
                            </div>
							<div class="am-form-group">
                            	<label for="user-email" class="am-u-sm-12 am-form-label am-text-left">最后修改时间
                            		<span class="tpl-form-line-small-title">Last Time</span>
                            	</label>
                               	<div class="am-u-sm-12">
                                	<input type="text" class="am-form-field tpl-form-no-bg am-margin-top-xs" name="firsttime" placeholder="发布时间" data-am-datepicker="" readonly>
                                    <small></small>
                                </div>
                            </div> -->
							
							<div class="am-form-group">
                            	<label class="am-u-sm-12 am-form-label  am-text-left">课程介绍
                            		<span class="tpl-form-line-small-title">Introduce</span>
                            	</label>
                                <div class="am-u-sm-12">
                                	<input type="text" class="am-margin-top-xs" name="introduce" value="${course.introduce }" placeholder="输入Describe" minlength="3" maxlength="15" required/>
                                </div>
                            </div>
							<div class="am-form-group">
	                            <label for="user-weibo" class="am-u-sm-12 am-form-label  am-text-left">封面图
	                            	<span class="tpl-form-line-small-title">Images</span>
	                            </label>
	                            
	                            <div class="am-u-sm-12 am-margin-top-xs">
		                            <div class="am-form-group am-form-file">
		                            	<div class="tpl-form-file-">
			                            	<img id="realPic" src="${course.img }" alt="">
			                            </div>
                            			<button id="fileButton" type="button" class="am-btn am-btn-danger am-btn-sm " >
    										<i class="am-icon-cloud-upload"></i> 选择图片
    									</button>
    									<div id="imgUpdiv"><input type="file" name="imgPath" id="imgUp" onchange="xmTanUploadImg(this)"/></div> 
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
                            	<c:if test="${course!=null }">
                                <label for="user-intro" class="am-u-sm-12 am-form-label  am-text-left">课程内容列表</label>
                                <label for="user-intro" class="am-u-sm-12 am-form-label  am-text-left">
                                	<button type="button" class="am-btn am-btn-primary js-modal-open">新增课程内容</button>
                                </label>
                                </c:if>
                                <div class="am-u-sm-12 am-margin-top-xs" style="position:relative;left:8px;"> 
                                	<div class="am-g">
  										<c:forEach items="${courseContents }" var="c">
	  										<div class="am-u-sm-3" style="float:left;">
	    										<div class="am-thumbnail">
		      										<a href="#"><img src="${c.img }" alt=""/></a>
		      										<h3 class="am-thumbnail-caption">${c.name }</h3>
		      										<h3 class="am-thumbnail-caption">${c.introduce }</h3>
		      										<button type="button" class="am-btn am-btn-primary am-round" style="position:relative;left:40px;">编辑</button>
		      										<button type="button" class="am-btn am-btn-danger am-round" style="position:relative;left:70px;">删除</button>
	    										</div>
	  										</div>
  										</c:forEach>
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
                                	<button id="submit" type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
                                </div>
                           	</div>
                       </form>
               	  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- 动态显示上传图片 -->
   <script>
	function xmTanUploadImg(obj) {
	    var file = obj.files[0];
	    if(file.type !== 'image/jpeg' && file.type !== 'image/png' && file.type !== 'image/gif'){
	    	$('#alertButton').click();
	    	return;
        }
	    console.log(obj);console.log(file);
	    console.log("file.size = " + file.size);  //file.size 单位为byte
		
	    var reader = new FileReader();
	    reader.onerror = function (e) {
	        console.log("读取异常....");
	    }
	    reader.onload = function (e) {
	        console.log("成功读取...."); 
			$("#fileButton").remove();
	        var img = document.getElementById("realPic");
	        img.src = e.target.result;
	        //或者 img.src = this.result;  //e.target == this
	    }
	    reader.readAsDataURL(file)
	}
    </script>

    <script src="backstagemanager/assets/js/amazeui.min.js"></script>
    <script src="backstagemanager/assets/js/amazeui.datatables.min.js"></script>
    <script src="backstagemanager/assets/js/dataTables.responsive.min.js"></script>
    <script src="backstagemanager/assets/js/app.js"></script>
</body>
</html>