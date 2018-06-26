<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<footer>
		<div id="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4 animate-box">
						<h3 class="section-title">关于我们</h3>
						<p>old drivers小组所制作的一款关于减肥健身的网站</p>
					</div>

					<div class="col-md-4 animate-box">
						<h3 class="section-title">我们的地址</h3>
						<ul class="contact-info">
							<li><i class="icon-map-marker"></i>河北师范大学软件学院</li>
							<li><i class="icon-phone"></i>17731139669</li>
							<li><i class="icon-envelope"></i><a href="#">odlw@outlook.com</a></li>
							<li><i class="icon-globe2"></i><a href="#">www.odlw.com</a></li>
						</ul>
					</div>
					<div class="col-md-4 animate-box">
						<h3 class="section-title">给我们一条建议</h3>
						<form class="contact-form" action="feedback/insertFeedback1" method="post">
							<div class="form-group">
								<label for="title" class="sr-only">题目</label>
								<input type="text" name="title" class="form-control" id="name" maxlength="50" placeholder="Name" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
															onBlur="if(!value){value=defaultValue; this.style.color='#999'}"
															style="color: #999">
							</div>
							<div class="form-group">
								<label for="type" class="sr-only">类型</label>
								<input type="text" name="type" class="form-control" id="email"  maxlength="20"placeholder="Email" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
															onBlur="if(!value){value=defaultValue; this.style.color='#999'}"
															style="color: #999">
							</div>
							<div class="form-group">
								<label for="message" class="sr-only">具体内容</label>
								<textarea class="form-control" name="content" id="message" rows="7" onkeyup="this.value=this.value.substring(0, 200)"
													placeholder="最多可输入200字"></textarea>
								<span id="text-count2" value="">0</span>/200
							</div>
							<div class="form-group">
								<input type="submit" id="btn-submit" class="btn btn-send-message btn-md" value="发信息">
							</div>
						</form>
					</div>
				</div>
				<div class="row copy-right">
					<div class="col-md-6 col-md-offset-3 text-center">
						<p>od减肥网版权由河北师范大学软件学院2015级大数据二班old drivers小组所有 </p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	 <script type="text/javascript">
    
    //字数限制
    window.onload = function() {
    //（jquery）
        $('#message').keyup(function() {
        var len=this.value.length
                    $('#text-count2').text(len);

        })
    }
	</script>
</body>
</html>