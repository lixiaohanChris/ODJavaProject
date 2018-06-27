var a;
function _iframe() {
	$.ajax({
		async : true,
		type : 'POST',
		data :  $("#registerForm").serialize(),
		url : "user/userinfo",
		success : function(data){
			 
		}
	})
    zeroModal.show({  
        title: '完善个人信息',
        iframe: true,
        url: 'userinfo.jsp',
        width: '33%',  
        height: '80%',
    })
}

function _confirm2() {
	zeroModal.confirm({
		content: '是否完善个人信息',
		contentDetail: '取消将直接注册',
		ok:true,
		okFn: function() {
			a=null;
			_iframe();
		},
	    cancelFn: function() {
	    	$("#submit").removeAttr("onclick");
			$("#submit").click();
		},
	});
}

function ajaxSubmit() {
    $.ajax({
        async : false,
        cache : false,
        type : 'POST',  
        data : $("#registerForm").serialize(),
        url : "user/registCheck",//请求的action路径  
        error : function() {//请求失败处理函数  
            alert('失败');
        },
        success : function(data) {
        	if(a==null){
        		a='on';
        		$("#submit").attr("onclick","javascript:return _confirm2()");
            	$("#submit").click();
            }else{
        		form.submit();
        	}
        }
    });
}
//打开字滑入效果
window.onload = function(){
	$(".connect p").eq(0).animate({"left":"0%"}, 600);
	$(".connect p").eq(1).animate({"left":"0%"}, 400);
};
//jquery.validate表单验证
$(document).ready(function(){	
	//注册表单验证
	$("#registerForm").validate({
		debug:false,   
		rules:{
			username:{
				required:true,//必填
				minlength:3, //最少6个字符
				maxlength:32,//最多20个字符
			},
			password:{
				required:true,
				minlength:3, 
				maxlength:32,
			},
			email:{
				required:true,
				email:true,
				remote:"user/registCheck",
				remote:{
					//ajax设置为同步验证解决，submit按钮需要提交两次才进行页面跳转的问题
					async:false,
					url:"user/registCheck",
					type:"post",
				},
			},
			confirm_password:{
				required:true,
				minlength:3, 
				equalTo:'.password'
			},
			phone_number:{
				required:true,
				phone_number:true,//自定义的规则
				digits:true,//整数
			},
			verification_code:{
				required:true,
				remote:"user/registVerificationCode",
				remote:{
					//ajax设置为同步验证解决，submit按钮需要提交两次才进行页面跳转的问题
					async:false,
					url:"user/registVerificationCode",
					type:"post",
				},
			},
		},
		//错误信息提示
		messages:{
			username:{
				required:"必须填写用户名",
				minlength:"用户名至少为3个字符",
				maxlength:"用户名至多为32个字符",
			},
			password:{
				required:"必须填写密码",
				minlength:"密码至少为3个字符",
				maxlength:"密码至多为32个字符",
			},
			email:{
				required:"请输入邮箱地址",
				email: "请输入正确的email地址",
				remote: "邮箱已存在",
			},
			confirm_password:{
				required: "请再次输入密码",
				minlength: "确认密码不能少于3个字符",
				equalTo: "两次输入密码不一致",//与另一个元素相同
			},
			phone_number:{
				required:"请输入手机号码",
				digits:"请输入正确的手机号码",
			},
			verification_code:{
				required:"必须填写验证码",
				remote: "验证码不正确"
			}
		},
		submitHandler: function(form) {
			ajaxSubmit();
		},
	});
	//添加自定义验证规则
	jQuery.validator.addMethod("phone_number", function(value, element) { 
		var length = value.length; 
		var phone_number = /^[1][3,4,5,7,8][0-9]{9}$/  
		return this.optional(element) || (length == 11 && phone_number.test(value)); 
	}, "手机号码格式错误"); 
});

