$(document).ready(function(){
	var msg=false;
	$('#doc-modal-list').find('.am-icon-close').add('#doc-confirm-toggle').
    on('click', function() {
      $('#my-confirm').modal({
        relatedTarget: this,
        onConfirm: function(options) {
        	submitAjax();
        },
        // closeOnConfirm: false,
        onCancel: function() {
            return false;
        }	
      });
    });
	$("#insertCourseType").submit(function(){
		if(msg==true){
			return true;
		}else{
			$("#doc-confirm-toggle").click();
			return false;
		}
	})
	
	$("#alertButton").click(function(){
		$('#imgUp').remove();
		$('#imgUpdiv').html('<input type="file" name="imgPath" id="imgUp" onchange="xmTanUploadImg(this)"/>')
	})
	function submitAjax(){
		if($("#realPic").attr("src")==""){
			$('#alertButton').click();
			return false;
		} 
		$.ajax({
			async : false,
			url:"course/backstage/formValidate",
			data:$("#insertCourseType").serialize(),
			type:'POST',
			success : function(data){
				if(data==false){
					
				} 
				if(data==true){
					msg=true;
					$("#submit").click();
				}
			},
		})
		
	}	
})