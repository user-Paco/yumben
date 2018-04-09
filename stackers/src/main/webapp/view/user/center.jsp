<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>个人中心</title>
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
<body bgcolor="#eee">

<header class="person-header">
	<div class="wrap">
        <a href="###" class="personicon"></a>
    </div>
</header>

<section class="person-lump">
	<div class="persion-container clearfix"> 
		<div class="person-head fl"><img src="<%=request.getContextPath() %>/static/img/login-logo-test.jpg"></div>
		<div class="person-name">
			<p class="p-name">${entity.nickName}<em>Lv.1</em></p>
			<p class="p-sign">签到<i></i></p>
			<p class="p-edit"><a></a></p>
		</div>
		<div class="person-attention">
			<ul>
				<li>
					<i>300</i>
					<i>关注</i>
				</li>
				<li>
					<i>7</i>
					<i>粉丝</i>	
				</li>
				<li>
					<i>8</i>
					<i>师父</i>
				</li>
				<li>
					<i>8</i>
					<i>徒弟</i>
				</li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
</section>

<section class="person-list">
	<div class="person-list-platform"> 
		<a href="#"><i></i>
		<h2>签约加入平台</h2></a>
	</div>
	
	<div class="person-list-all">
		<ul>
			<li><a href="#"><i class="icon-1"></i><i>人脉</i></a></li>
			<li><a href="#"><i class="icon-2"></i><i>任务</i></a></li>
			<li><a href="#"><i class="icon-3"></i><i>发布</i></a></li>
			<li><a href="#"><i class="icon-4"></i><i>收藏</i></a></li>
			<li><a href="#"><i class="icon-5"></i><i>申请</i></a></li>
			<li><a href="#"><i class="icon-6"></i><i>邀请</i></a></li>
			<li><a href="#"><i class="icon-7"></i><i>团队</i></a></li>
			<li><a href="#"><i class="icon-8"></i><i>小目标</i></a></li>
		</ul>
	</div>
	
	<div class="person-list-wallet">
		<a href="#"><i></i>
		<h2>钱包</h2></a>
	</div>

</section>

<footer class="footer-fixed flex">
	<a class="flex-1 cur" href="#"><i class="ico1"></i>首页</a>
    <a class="flex-1" href="#"><i class="ico2"></i>任务</a>
    <a class="flex-1" href="#"><i class="ico3"></i>消息</a>
    <a class="flex-1" href="#"><i class="ico4"></i>社区</a>
    <a class="flex-1" href="#"><i class="ico5"></i>我的</a>
</footer>

</body>
</html>
