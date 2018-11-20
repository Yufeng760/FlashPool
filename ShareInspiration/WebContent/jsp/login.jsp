<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/home.css">
</head>
<body>
	<div class="main">
		<div class="mname">飞瀑</div>
		<div class="come">登录飞瀑，思如泉涌</div>
		<div class="user">
			<div class="write">
				<div class="account" >
					<input style="background-color: white;border: 0px; border-bottom: 1px solid #EBEBEB;width: 22rem;height: 3rem; color: #8890A8;" type="text" name="" value="请输入账号">
				</div>
				<div class="password">
					<input style="background-color: white;border: 0px;border-bottom: 1px solid #EBEBEB;width: 22rem;height: 3rem; color: #8890A8;" type="password"  name="" value="请输入密码">
				</div>
				<div class="forget">忘记密码?</div>
				<div style="margin:0 auto;"><button class="sure">登录</button></div>
				<div class="remind">
				</div>
			</div>

		</div>
	    	<div class="uresgiter">没有账号?<span><a class="sel" href="resgiter.html">注册</a></span></div>
	    	
	</div>
</body>
</html>