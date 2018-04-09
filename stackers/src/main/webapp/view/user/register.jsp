<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/view/base/base.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="format-detection" content="telephone=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/base.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/def.css">
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/need/layer.css" /> --%>
<script src="<%=request.getContextPath() %>/static/js/lib/jquery.js"></script>
<script src="<%=request.getContextPath() %>/static/js/lib/global.js"></script>
<script src="<%=request.getContextPath() %>/static/js/base-all.js"></script>
</head>
<body >
<header class="header-bar">
	<div class="wrap">
        <a class="back" href="javascript:history.back(-1)">
        	<i></i>
        </a>
        <h1 class="tit">注册</h1>
    </div>
</header>

<section class="form-lump">
	<form id="userFrom">
		<ul class="enter-data">
			<li>
				
				<input type="text" class="ipt" placeholder="昵称" id="name">
				<i class="ipticon phone"></i>
			</li>
			<li>
				<input type="number" class="ipt" placeholder="手机号" maxlength="11" id="phone"> 
				<i class="ipticon link"></i>
			</li>
			<li>
				<input type="password" id="password" class="ipt" placeholder="密码">
				<i class="ipticon passw-invisible" id="invisible" onclick="PublicMethod.changeInvisible()"></i>
			</li>
			<li>
				<input type="password" class="ipt" placeholder="确认密码" id="pwd">
				<i class="ipticon passwtoo"></i>
			</li>
		</ul>
		<!-- <a class="login-btn" id="save">注册</a> -->
		<button class="login-btn" id="save">注册</button>
	</form>
</section>

<script type="text/javascript">
$('#save').click(function(){
	var name=$('#name').val();
	var phone=$('#phone').val();
	var pwd=$('#pwd').val();
	$.ajax({
		url : path+"/register",
		data :{'name':name,'phone':phone,'pwd':pwd},
		async : false,
		type : "post",
		success : function(data){
			alert(data.message);
			if (data.success){
				window.location.href = path+"/User/center";
				window.event.returnValue = false;
			}
		}
	});
});


</script>

</body>
</html>
