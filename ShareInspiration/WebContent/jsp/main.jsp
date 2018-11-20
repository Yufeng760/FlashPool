<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html public "-//w3c//dtd html 5.0 transitional//en">
<html>

	<head>
		<title> new document </title>
		<meta name="generator" content="editplus">
		<meta name="author" content="">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta name="keywords" content="">
		<meta name="description" content="">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/home.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" />
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
		<script type="text/javascript">
		function checkPhone(){
			// 获得文件框值:
			var username = document.getElementById("username").value;
			// 1.创建异步交互对象
			var xhr = createXmlHttp();
			// 2.设置监听
			xhr.onreadystatechange = function(){
				if(xhr.readyState == 4){
					if(xhr.status == 200){
						document.getElementById("span1").innerHTML = xhr.responseText;
					}
				}
			}
			// 3.打开连接
			xhr.open("GET","${pageContext.request.contextPath}/UserAction_findByName.action?time="+new Date().getTime()+"&username="+username,true);
			// 4.发送
			xhr.send(null);
		}
		
		function createXmlHttp(){
			   var xmlHttp;
			   try{ // Firefox, Opera 8.0+, Safari
			        xmlHttp=new XMLHttpRequest();
			    }
			    catch (e){
				   try{// Internet Explorer
				         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
				      }
				    catch (e){
				      try{
				         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
				      }
				      catch (e){}
				      }
			    }

				return xmlHttp;
		}
		</script>
	</head>

	<body style="background: #F6F6F6">
		<div class="theme">
			<nav class=" navbar navbar-expand-lg" style="background-color: #FFFFFF;">
				<a href="#" class="title" style="font-size: 26px;">飞瀑</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
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
								<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
								<button class="btn btn-primary my-2 my-sm-0 " type="submit">Search</button>
							</form>
						</li>
					</ul>
					<span>
		      <a class="nav-link " href="#" style="font-size: 17px;" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus
		sagittis lacus vel augue laoreet rutrum faucibus." >写</a>
		    </span>
					<span>
		      <a class="denglu" href="#" data-toggle="modal" data-target="#myModal">登录</a>
		    </span>
					<span class="navbar-nav my-2 my-lg-0">
		      <a class="nav-link  my-2 my-lg-0" href="${pageContext.request.contextPath}/UserAction_toRegistPage.action">注册</a>
		    </span>
				</div>
			</nav>
			<!-- 模态框（Modal） -->
			<!--登录-->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myModalLabel" style="color: #4134FF;margin: 0 auto;font-size: 50px;">飞&nbsp;&nbsp;瀑
							</h4>
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="margin-left: 0px;">&times;
							</button>
						</div>
						<div class="modal-body">
							<div class="come">登录飞瀑， 文若春华 思如泉涌

							</div>
							<div class="account">
								<input style="background-color: white;border: 0px; border-bottom: 1px solid #EBEBEB;width: 22rem;height: 3rem; color: #8890A8;" type="text" name="" placeholder="请输入手机号">
							</div>
							<div class="password">
								<input style="background-color: white;border: 0px;border-bottom: 1px solid #EBEBEB;width: 22rem;height: 3rem; color: #8890A8;" type="password" name="" placeholder="请输入密码">
							</div>
							<div class="uforget">
								<div class="uverify">
									<a class="verify" href="#" style="font-size: 14px; text-align: left;">手机验证码登录</a>
								</div>
								<div>
									<a class="forget" href="#" style="font-size: 14px;text-align: right;">忘记密码?</a>
								</div>

							</div>
							<div class="bsure"><button class="sure">登录</button>
							</div>
							<div class="remind">
							</div>
						</div>
						<div class="modal-footer" style="text-align: center;">

							<span style="margin: 0 auto;">							没有账号?<span><a class="sel" href="#" data-toggle="modal" data-target="#myModal2" data-dismiss="modal">快速注册</a></span>
							</span>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<!--注册-->
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myModalLabel" style="color: #4134FF;margin: 0 auto;font-size: 50px;">
								飞&nbsp;&nbsp;瀑
							</h4>
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="margin-left: 0px;">
								&times;
							</button>
						</div>
						<div class="modal-body">
							<div class="come">注册飞瀑， 文若春华 思如泉涌
							</div>
							<div class="user">
								<form class="write" action="${pageContext.request.contextPath }/UserAction_registing" method="post">
									<div class="account">
										<input style="background-color: white;border: 0px; border-bottom: 1px solid #EBEBEB;width: 22rem;height: 3rem; color: #8890A8;" type="text" name="phone" placeholder="请输入手机号" onblur="checkPhone()">
										<span id="span1"></span>
									</div>
									<div class="password">
										<input style="background-color: white;border: 0px; border-bottom: 1px solid #EBEBEB;width: 22rem;height: 3rem; color: #8890A8;" type="password" name="password" placeholder="请输入密码">
									</div>
									<div class="validate" style="padding-bottom: 1rem;padding-top: 1rem;">
										<input style="background-color: white;border: 0px;border-bottom: 1px solid #EBEBEB;width: 12rem;height: 3rem; color: #8890A8;margin-left: 3.5rem;" type="password" name="code" placeholder="请输入短信验证码">
										<a class="forget" href="${pageContext.request.contextPath }/UserAction_getMessageCode.action" style="font-size: 17px;width: 10rem;margin-right: 2.5rem;text-align: center;margin-top: 0.7rem;">获取短信验证码</a>
									</div>
									<div class="bsure"><button class="sure" type="submit">快速注册</button></div>

									<div class="remind">注册即代表同意《飞瀑协议》《隐私保护指引》
									</div>
								</form>

							</div>
						</div>
						<div class="modal-footer" style="text-align: center;">
							<!--<a href="#" style="margin-right: 160px;">
								<button type="button" class="btn btn-default" data-dismiss="modal" style="background: #007BFF;color: white;width: 150px;">登&nbsp;&nbsp;陆</button>
							</a>-->
							<span style="margin: 0 auto;">							已有账号?<span><a class="sel" href="#" data-toggle="modal" data-target="#myModal"  data-dismiss="modal">登录</a></span>
							</span>

						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>

		</div>
		<div class="idea"></div>

	</body>

</html>