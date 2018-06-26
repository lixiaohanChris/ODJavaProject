<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${userInfo!=null }">
	<div class="page-header">
		<h2 class="page-title">个人信息</h2>
	</div>
	<!-- /.page-header -->
	<div class="content-inner">
		<div class="row">
			<div class="left">
				<div>
					<table>
						<tr>
							<th>姓名：</th>
							<th>${userInfo.information.name }</th>
						</tr>
						<tr>
							<th>性别：</th>
							<th>${userInfo.information.sex }</th>
						</tr>
						<tr>
							<th>身高：</th>
							<th>${userInfo.information.height }cm</th>
						</tr>
						<tr>
							<th>体重：</th>
							<th>${userInfo.information.weight }kg</th>
						</tr>
						<tr>
							<th>邮箱：</th>
							<th>${userInfo.email }</th>
						</tr>
					</table>
				</div>
			</div>
			<div class="left">
				<table>
					<tr>
						<th>生日：</th>
						<th>${userInfo.information.birthday }</th>
					</tr>
					<tr>
						<th>所在地：</th>
						<th>${userInfo.information.address.province }${userInfo.information.address.city }${userInfo.information.address.area }</th>
					</tr>
					<tr>
						<th>BMI指数：</th>
						<th>${userInfo.information.bmi }</th>
					</tr>
					<tr>
						<th>运动基础：</th>
						<th>${userInfo.information.sports_base }</th>
					</tr>
					<tr>
						<th>联系方式：</th>
						<th>${userInfo.phone_number }&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a
							href="info/getInfo" class="button">完善信息</a></th>
					</tr>
				</table>
			</div>
		</div>
		<div class="our-team">
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="team-member">
						<div class="member-thumb">
							<img src="images/personal/team1.jpg" alt="">
						</div>
						<div class="member-infos">
							<h4 class="member-name">坚持运动</h4>
							<p class="member-desc">防止脂肪堆积</p>
						</div>
					</div>
				</div>
				<!-- /.col-md-4 -->
				<div class="col-md-4 col-sm-6">
					<div class="team-member">
						<div class="member-thumb">
							<img src="images/personal/team2.jpg" alt="">
						</div>
						<div class="member-infos">
							<h4 class="member-name">健康饮食</h4>
							<p class="member-desc">严格控制热量摄入.</p>
						</div>
					</div>
				</div>
				<!-- /.col-md-4 -->
				<div class="col-md-4 col-sm-6">
					<div class="team-member">
						<div class="member-thumb">
							<img src="images/personal/team3.jpg" alt="">
						</div>
						<div class="member-infos">
							<h4 class="member-name">科学减肥</h4>
							<p class="member-desc">掌握新陈代谢规律减肥更快.</p>
						</div>
					</div>
				</div>
				<!-- /.col-md-4 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.our-team -->
</c:if>
<c:if test="${course!=null }">
	<div class="page-header">
		<h2 class="page-title">猜你喜欢</h2>
	</div>
	<!-- /.page-header -->
	<div class="content-inner">
		<div class="row services">
			<c:forEach items="${course }" var="c">
				<div class="col-md-4 col-sm-6"
					style="background-image: url(${c.img });height:300px;margin-top:0px;background-size:100% 100%;">
					<div class="service-header"
						style="font-size: 20px; height: 60px; margin-top: 30px; text-align: center; background-color: #000; opacity: 0.5; color: #FFF; line-height: 60px;">
						&nbsp&nbsp<b>${c.name }</b>
					</div>
				</div>
				<!-- /.col-md-4 -->
			</c:forEach>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.content-inner -->
</c:if>
<c:if test="${CourseTypes!=null }">
	<c:forEach items="${CourseTypes }" var="c">
		<div class="col-md-4 col-sm-6">
			<div class="gallery-item">
				<div class="gallery-thumb" onclick="imgClick1('${c.id }')" style="height:300px">
					<img src="${c.imgPath }" alt="">
				</div>
				<!-- /.gallery-thumb -->
				<div class="gallery-content" style="height:90px">
					<h4 class="gallery-title">${c.typename }</h4>
					<span class="gallery-category">${c.description }</span>
				</div><!-- /.gallery-content -->
			</div><!-- /.gallery-item -->
		</div><!-- /.col-md-4 -->
	</c:forEach>
</c:if>
<c:if test="${coursesByTypeId!=null }">
	<c:forEach items="${coursesByTypeId }" var="c">
		<div class="col-md-4 col-sm-6">
			<div class="gallery-item">
				<div class="gallery-thumb" style="height:300px" onclick="imgClick2('${c.id }')">
					<img src="${c.img }" alt="">
				</div>
				<!-- /.gallery-thumb -->
				<div class="gallery-content" style="height:90px">
					<h4 class="gallery-title">${c.name }</h4>
					<span class="gallery-category">${c.introduce }</span>
				</div><!-- /.gallery-content -->
			</div><!-- /.gallery-item -->
		</div><!-- /.col-md-4 -->
	</c:forEach>
</c:if>
<c:if test="${courses!=null }">
	<c:forEach items="${courses }" var="c">
		<div class="col-md-4 col-sm-6">
			<div class="gallery-item">
				<div class="gallery-thumb" style="height:300px">
					<img src="${c.img }" alt="">
				</div>
				<!-- /.gallery-thumb -->
				<div class="gallery-content" style="height:90px">
					<h4 class="gallery-title">${c.name }</h4>
					<span class="gallery-category">${c.introduce }</span>
				</div><!-- /.gallery-content -->
			</div><!-- /.gallery-item -->
		</div><!-- /.col-md-4 -->
	</c:forEach>
</c:if>
<c:if test="${courseContents!=null }">
	<c:forEach items="${courseContents }" var="c">
		<div class="col-md-4 col-sm-6">
			<div class="gallery-item">
				<div class="gallery-thumb" style="height:300px">
					<img src="${c.img }" alt="">
				</div>
				<!-- /.gallery-thumb -->
				<div class="gallery-content" style="height:90px">
					<h4 class="gallery-title">${c.name }</h4>
					<span class="gallery-category">${c.introduce }</span>
					<a href="${c.path }" target="_blank">点击查看视频</a>
				</div><!-- /.gallery-content -->
			</div><!-- /.gallery-item -->
		</div><!-- /.col-md-4 -->
	</c:forEach>
</c:if>