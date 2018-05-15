<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<base href="<%=basePath%>">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/alert/zeroModal.css" />
<script src="js/alert/zeroModal.min.js"></script>
	<style type="text/css">
	    ol {
	        counter-reset: li;
	        list-style: none;
	        *list-style: decimal;
	        font: 13px 'trebuchet MS', 'lucida sans';
	        padding: 0;
	        margin-bottom: 4em;
	        text-shadow: 0 1px 0 rgba(255, 255, 255, .5);
	    }
	    
	    ol ol {
	        margin: 0 0 0 2em;
	    }
	    
	    .rounded-list a {
	        position: relative;
	        display: block;
	        padding: .4em .4em .4em 2em;
	        *padding: .4em;
	        margin: .8em 0;
	        background: #ddd;
	        color: #444;
	        text-decoration: none;
	        border-radius: .3em;
	        transition: all .3s ease-out;
	    }
	    
	    .rounded-list a:hover {
	        background: #eee;
	    }
	    
	    .rounded-list a:hover:before {
	        transform: rotate(360deg);
	    }
	    
	    .rounded-list a:before {
	        content: counter(li);
	        counter-increment: li;
	        position: absolute;
	        left: -1.3em;
	        top: 50%;
	        margin-top: -1.3em;
	        background: #87ceeb;
	        height: 2em;
	        width: 2em;
	        line-height: 2em;
	        border: .3em solid #fff;
	        text-align: center;
	        font-weight: bold;
	        border-radius: 2em;
	        transition: all .3s ease-out;
	    }
	    
	    rectangle-list a {
	        position: relative;
	        display: block;
	        padding: .4em .4em .4em .8em;
	        *padding: .4em;
	        margin: .5em 0 .5em 2.5em;
	        background: #ddd;
	        color: #444;
	        text-decoration: none;
	        transition: all .3s ease-out;
	    }
	    
	    .rectangle-list a:hover {
	        background: #eee;
	    }
	    
	    .rectangle-list a:before {
	        content: counter(li);
	        counter-increment: li;
	        position: absolute;
	        left: -2.5em;
	        top: 50%;
	        margin-top: -1em;
	        background: #fa8072;
	        height: 2em;
	        width: 2em;
	        line-height: 2em;
	        text-align: center;
	        font-weight: bold;
	    }
	    
	    .rectangle-list a:after {
	        position: absolute;
	        content: '';
	        border: .5em solid transparent;
	        left: -1em;
	        top: 50%;
	        margin-top: -.5em;
	        transition: all .3s ease-out;
	    }
	    
	    .rectangle-list a:hover:after {
	        left: -.5em;
	        border-left-color: #fa8072;
	    }
	    
	    .rectangle-list a {
	        position: relative;
	        display: block;
	        padding: .4em .4em .4em .8em;
	        *padding: .4em;
	        margin: .5em 0 .8em 2.5em;
	        background: #ddd;
	        color: #444;
	        text-decoration: none;
	        transition: all .3s ease-out;
	    }
	    
	    .rectangle-list a:hover {
	        background: #eee;
	    }
	    
	    .rectangle-list a:before {
	        content: counter(li);
	        counter-increment: li;
	        position: absolute;
	        left: -2.5em;
	        top: 50%;
	        margin-top: -1em;
	        background: #fa8072;
	        height: 2em;
	        width: 2em;
	        line-height: 2em;
	        text-align: center;
	        font-weight: bold;
	    }
	    
	    .rectangle-list a:after {
	        position: absolute;
	        content: '';
	        border: .5em solid transparent;
	        left: -1em;
	        top: 50%;
	        margin-top: -.5em;
	        transition: all .3s ease-out;
	    }
	    
	    .rectangle-list a:hover:after {
	        left: -.5em;
	        border-left-color: #fa8072;
	    }
    </style>
</head>
<body>
	<!-- odmethod test -->
	<form action="odMethod/muTest">
		<input type="submit" value="testMU"/>
	</form>
	<video src="https://static1.keepcdn.com/chaos/0728/B036C023_main_s.mp4" controls="controls">
		your browser does not support the video tag
	</video>
	<button id="submit1" onclick="openInfo()">弹窗</button>
	<script type="text/javascript">
		function openInfo(){
			window.open("chat.html","newwindow","height=100","width=400","top=0","left=0","toolbar=no","menubar=no","scrollbars=no","resizable=no","location=no","status=no");
		}
	</script>
	<div style="position:absolute;width:200px;left:760px;">
        <ol class="rounded-list">
            <li><a href="javascript:_alert1()">提示框1 (alert)</a></li>
            <li><a href="javascript:_alert2()">提示框2 (alert)</a></li>
            <li> <a href="javascript:_confirm1()">确认框1 (confirm)</a></li>
            <li onclick="javascript:_confirm2()"> <a>确认框2 (confirm)</a></li>
            <li> <a href="javascript:_error()">失败提示框 (error)</a></li>
            <li> <a href="javascript:_success()">成功提示框 (success)</a></li>
        </ol>
    </div>
	    <script>
    function _basic() {
        zeroModal.show();
    }

    function _params() {
        zeroModal.show({
            title: 'hello world',
            content: 'this is zeroModal',
            close: false
        });
    }

    function _escape() {
        zeroModal.show({
            title: 'hello world',
            content: '<b>this is zeroModal</b>',
            escape: false
        });
    }

    function _button() {
        zeroModal.show({
            title: 'hello world',
            content: 'this is zeroModal',
            ok: true,
            cancel: true,
            okFn: function(opt) {
                console.log(opt);
                alert('clicked ok and not close');
                return false;
            }
        });
    }

    function _setsize() {
        zeroModal.show({
            title: 'hello world',
            content: 'this is zeroModal',
            width: '60%',
            height: '40%'
        });
    }

    function _notoverlay() {
        zeroModal.show({
            title: 'hello world',
            content: 'this is zeroModal',
            width: '60%',
            height: '40%',
            overlay: false
        });
    }

    function _iframe() {
        zeroModal.show({
            title: 'hello world',
            iframe: true,
            url: 'http://www.baidu.com',
            width: '80%',
            height: '80%',
            cancel: true
        });
    }

    function _esc() {
        zeroModal.show({
            title: 'hello world',
            content: 'this is zeroModal',
            esc: true
        });
    }

    function _resize() {
        zeroModal.show({
            title: 'hello world',
            content: 'this is zeroModal',
            width: '60%',
            height: '40%',
            resize: true
        });
    }

    function _maxmin() {
        zeroModal.show({
            title: 'hello world',
            content: 'this is zeroModal',
            width: '60%',
            height: '40%',
            max: true,
            min: true
        });
    }

    function _loading(type) {
        zeroModal.loading(type);
    }

    function _progress() {
        zeroModal.progress();
    }

    function _alert1() {
        zeroModal.alert('请选择数据进行操作!');
    }

    function _alert2() {
        zeroModal.alert({
            content: '操作提示!',
            contentDetail: '请选择数据后再进行操作',
            okFn: function() {
                alert('ok callback');
            }
        });
    }

    function _confirm1() {
        zeroModal.confirm("确定提交审核吗？", function() {
            alert('ok');
            //return false;
        });
    }

    function _confirm2() {
        zeroModal.confirm({
            content: '确定提交审核吗？',
            contentDetail: '提交后将不能进行修改。',
            okFn: function() {
                document.getElementById('submit1').click();
            },
            cancelFn: function() {
                alert('cancel');
            }
        });
    }

    function _error() {
        zeroModal.error('请选择数据进行操作!');

        /*zeroModal.error({
            content: '请选择数据进行操作!',
            width: '800px'
        });*/
    }

    function _success() {
        zeroModal.success('操作成功!');
    }

    function _setOpacity() {
        zeroModal.show({
            title: 'hello world',
            content: 'this is zeroModal',
            width: '60%',
            height: '40%',
            opacity: 0.8
        });
    }

    function _drag() {
        zeroModal.show({
            title: 'hello world',
            content: 'this is zeroModal',
            dragHandle: 'container',
            ok: true
        });
    }

    function _custombutton() {
        zeroModal.show({
            title: 'hello world',
            iframe: true,
            url: 'http://www.baidu.com',
            width: '60%',
            height: '60%',
            buttons: [{
                className: 'zeromodal-btn zeromodal-btn-primary',
                name: '这是自定义按钮',
                fn: function(opt) {
                    alert(1);
                    return false;
                }
            }, {
                className: 'zeromodal-btn zeromodal-btn-default',
                name: '取消',
                fn: function(opt) {
                    alert(2);
                }
            }]
        });
    }

    function _setPosition() {
        zeroModal.show({
            title: 'hello world',
            content: 'this is zeroModal',
            top: '30px',
            left: '30px',
            width: '280px',
            height: '600px'
        });
    }
    </script>
    <div style="position:absolute;width:200px;left:220px;">
        <ol class="rounded-list">
            <li><a href="javascript:_basic()">basic</a></li>
            <li><a href="javascript:_params()">带标题</a></li>
            <li><a href="javascript:_escape()">内容不转义</a></li>
            <li><a href="javascript:_button()">带按钮</a></li>
            <li><a href="javascript:_setsize()">自定义尺寸(px、pt、%)</a></li>
            <li><a href="javascript:_custombutton()">自定义按钮</a></li>
            <li><a href="javascript:_notoverlay()">不要遮罩</a></li>
            <li><a href="javascript:_setOpacity()">设置遮罩层透明度</a></li>
            <li><a href="javascript:_iframe()">嵌套iframe</a></li>
            <li><a href="javascript:_esc()">esc键退出</a></li>
            <li><a href="javascript:_resize()">允许拖放大小</a></li>
            <li><a href="javascript:_maxmin()">允许最大化最小化</a></li>
            <li><a href="javascript:_drag()">点击层任意地方拖动</a></li>
            <li><a href="javascript:_setPosition()">自定义弹框位置</a></li>
        </ol>
    </div> 
    <script type="text/javascript">
    	function _iframe() {
        zeroModal.show({
            title: 'hello world',
            iframe: true,
            url: 'user.jsp',
            width: '80%',
            height: '80%',
            cancel: true
        })
        }
    </script>
    <a href="course/courseTypeShow">课程表test</a>   
    <c:forEach items="${courseTypeList }" var="c">
    	${c.typename }
    	<a href="course/courseShow?typeid=${c.id }">课程展示</a>
    </c:forEach>
    
    <c:forEach items="${courseList }" var="c">
    	课程名称是：${c.name }
    </c:forEach>
    
</body>
</html>