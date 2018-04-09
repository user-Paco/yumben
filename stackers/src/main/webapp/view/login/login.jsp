<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/view/base/base.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="format-detection" content="telephone=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/base.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/def.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/js/lib/need/layer.css">
<script src="<%=request.getContextPath() %>/static/js/lib/jquery.js"></script>
<script src="<%=request.getContextPath() %>/static/js/lib/layer.js"></script>
<script src="<%=request.getContextPath() %>/static/js/lib/global.js"></script>
<script src="<%=request.getContextPath() %>/static/js/base-all.js"></script>
<script src="<%=request.getContextPath() %>/static/js/login.js"></script>
</head>
<body>


<style>
.login-bottom{
display: table;
margin:0 auto;
height:40px;
text-align: center;
padding:0;
}
</style>


<header class="header-bar">
	<div class="wrap">
        <a class="back" href="javascript:history.back(-1)"><i></i></a>
        <h1 class="tit"></h1>
    </div>
</header>

<section class="form-lump">
	
	<div class="login-logo">
		<img src="<%=request.getContextPath()%>/static/img/login-logo-test.jpg"/>
	</div>
	
	<form>
		<ul class="enter-data">
			<li>
				<input type="number" class="ipt" placeholder="手机号" maxlength="11" id="phone">
				<i class="ipticon phone"></i>
			</li>
			<li>
				<input type="password" id="password" class="ipt" placeholder="密码">
				<i class="ipticon passw-invisible" id="invisible" onclick="PublicMethod.changeInvisible()"></i>
			</li>
		</ul>
		<a class="login-btn" onclick="loginUSer()">登录</a>
		<ul class="login-bottom">
			<!-- <li class="li-left"><a href="#">注册用户</a></li> -->
			<li class="li-left"><a href="#">忘记密码?</a></li>
			<li class="li-right"><a href="<%=request.getContextPath()%>/toregister">注册用户</a></li>
		</ul>
	</form>
	 <div class="clear"></div>
</section>

<script type="text/javascript">
	function loginUSer(){
		var phone=$('#phone').val();
		var pwd=$('#password').val();
		$.ajax({
			url : path+"/tocenter",
			data :{'phone':phone,'pwd':pwd},
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
	}
	
</script>

</body>
</html>
