function ajaxSubmit(){
		var a;
		$.ajax({
			async : false,
			cache : false,
			type : 'POST',
			data :  $("#userInfoForm").serialize(),
			url : "info/userInfoAjax",
			success : function(data){
				if(data==false){
					a=1
					$("#target1").click();
				}	
			},
		})
		if(a==1){
			$("#errorp").html("X");
			return false;
		}else{
			window.parent.location.replace("index.jsp")
			return true;
		}	
	}


