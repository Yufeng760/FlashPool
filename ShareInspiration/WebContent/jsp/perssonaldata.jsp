<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>个人资料</title>
		<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" />
	</head>

	<body>
		<div class="container header">
			<nav class=" navbar navbar-expand-lg" style="background-color: #FFFFFF;">
				<a href="#" class="nav-link" style="font-size: 26px;font-family: '微软雅黑';">飞瀑</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto" style="margin-left: 370px;">
						<li class="nav-item">
							<a class="nav-link" href="#">主页 <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">发现</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">话题</a>
						</li>
						<li class="nav-item">
							<form class="form-inline my-2 my-lg-0">
								<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"/>
								<button class="btn btn-primary my-2 my-sm-0 " type="submit">Search</button>
							</form>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	<div style="background: url(${pageContext.request.contextPath}/img/sky.jpg) no-repeat;z-index 1;width: 100%;">
		<div class="container register" >
			<div class="span24" style="background: white;">
				<div class="wrap">
					<div class="main clearfix">
						<div class="title">
							<strong>个人资料</strong>USER DATA
						</div>
						<form id="registerForm" method="post" novalidate="novalidate" style="font-size: 11px;">
							<table>
								<tbody>
									<tr>
										<th>
											<span class="requiredField"></span>用户名:
										</th>
										<td>
											<input type="text" id="username" name="username" class="text" maxlength="20"/>
										</td>
									</tr>
									<tr>
										<th>
											<span class="requiredField"></span>E-mail:
										</th>
										<td>
											<input type="text" id="email" name="email" class="text" maxlength="200"/>
										</td>
									</tr>
									<tr>
										<th>
											姓名:
										</th>
										<td>
											<input type="text" name="memberAttribute_1" class="text" maxlength="200"/>
										</td>
									</tr>
									<tr>
										<th>
											性别:
										</th>
										<td>
											<span class="fieldSet">
														<label>
															<input type="radio" name="memberAttribute_2" value="male"/>男
														</label>
														<label>
															<input type="radio" name="memberAttribute_2" value="female"/>女
														</label>
												</span>
										</td>
									</tr>
									<tr>
										<th>
											出生日期:
										</th>
										<td>
											<input type="text" name="memberAttribute_3" class="text" onfocus="WdatePicker();"/>
										</td>
									</tr>

									<tr>
										<th>
											地址:
										</th>
										<td>
											<input type="text" name="memberAttribute_5" class="text" maxlength="200"/>
										</td>
									</tr>
									<tr>
										<th>
											手机绑定:
										</th>
										<td>
											<input type="text" name="memberAttribute_1" class="text" maxlength="200"/>
										</td>
									</tr>
									<tr>
										<th>&nbsp;

										</th>
										<td>
											<input type="submit" class="submit" value="提&nbsp;&nbsp;&nbsp;交" style="background: #007BFF;font-size: 15px;"/>
										</td>
									</tr>
									<tr>
										
									</tr>
									
								</tbody>
							</table>
					</form>
				</div>
			</div>
		</div>
		</div>
		<div class="container footer">
			<div class="span24">
				<ul class="bottomNav">
					<li>
						<a>关于我们</a>
						|
					</li>
					<li>
						<a>联系我们</a>
						|
					</li>
					<li>
						<a>招贤纳士</a>
						|
					</li>
					<li>
						<a>法律声明</a>
						|
					</li>
					<li>
						<a>友情链接</a>
						|
					</li>
					<li>
						<a>服务声明</a>
						|
					</li>
					<li>
						<a>广告声明</a>

					</li>
				</ul>
			</div>
			<div class="span24">
				<div class="copyright">Copyright © 2005-2015 飞瀑社区 版权所有</div>
			</div>
		</div>
	</div>
	</body>

</html>