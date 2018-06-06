<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<base href="<%=basePath%>">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!-- CourseTypeList -->
	<c:if test="${courseTypes!=null }">
		<div class="am-u-sm-12">
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
	                       		<a href="course/backstage/courseShow/header/${c.id }">
			           		   		<img src="${c.imgPath }" class="tpl-table-line-img" alt="${c.typename }">
			                    </a>
	                   		</td>
	                   		<td class="am-text-middle"><a href="course/backstage/courseShow/header/${c.id }">${c.typename }</a></td>
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
   </c:if>
   
	<c:if test="${courses!=null }">
		<div class="am-u-sm-12">
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
							<td class="am-text-middle">发布时间</td>
							<td class="am-text-middle">最后修改时间</td>
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
	</c:if>
		<div class="am-u-sm-12">
   			<table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black ">
       			<thead>
           			<tr>
               			<th>课程图片</th>
					    <th>课程名称</th>
               			<th>课程介绍</th>
					    <th>课程视频</th>
					    <th>发布时间</th>
					    <th>最后修改时间</th>
					    <th>操作</th>
           			</tr>
       			</thead>
       			<tbody>
       				<c:forEach items="${CourseContents }" var="c">
						<tr class="gradeX">
							<td>
   	   							<img src="${c.img }" class="tpl-table-line-img" alt="${c.name }">
   							</td>
						  	<td class="am-text-middle">${c.name }</td>
							<td class="am-text-middle">${c.introduce }</td>
							<td class="am-text-middle"><a href="${c.path }">点击查看</a></td>
							<td class="am-text-middle">发布时间</td>
							<td class="am-text-middle">最后修改时间</td>
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
	<c:if test="">
	
	</c:if>