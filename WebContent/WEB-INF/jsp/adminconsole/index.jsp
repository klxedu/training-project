<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>GTILES FRAMEWORK LOGIN</title>
		<link href="../skin/bootstrap/css/bootstrap-3.3.5.min.css" rel="stylesheet">
		<link href="../skin/bootstrap/css/bootstrap-theme-3.3.5.min.css" rel="stylesheet">
		<link href="../skin/backconsole/css/login.css" rel="stylesheet">
	</head>
	<style type="text/css">
		.nav_top{
			font-family: arial;
		}
	</style>
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand nav_top" href="#">Gtiles framework</a>
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="./doc/admin" target="_blank">平台文档</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		
		<div class="container-fluid" ng-app="adminconsole" ng-controller="acctrl">
			<div class="row">
				<div id="ng_wiew" class="col-sm-12 col-md-12 main">
					<div class="container" id="log">
                         <c:if test="${!empty error}">
                         <div class="alert alert-danger fade in"><a href="#" class="close" data-dismiss="alert">&times;</a>
                                <strong>${error}</strong>
                          </div>
                          </c:if>
						  <form   action="../adminconsole/login" method="post" class="form-signin">
							<h2 class="form-signin-heading">管理控制台登录</h2>
							<label for="inputEmail" class="sr-only">Email address</label>
							<input type="username" id="username" class="form-control" placeholder="Email address" required autofocus name="username" >
							<br />
							<label for="inputPassword" class="sr-only">Password</label>
							<input type="password" id="inputPassword" class="form-control" placeholder="Password" required name="password" >
							<div class="checkbox">
								<label>
									<input type="checkbox" value="remember-me"> Remember me
								</label>
							</div>
							<button  class="btn btn-lg btn-primary btn-block" type="submit" id="loginbtn"
							data-toggle="popover" 
							data-trigger="focus" title="" 
							data-content="用户名或密码错误                       "
							data-placement="left"
							>登   录</button>
							<input type="hidden" name="errorcode" />
						</form>
					</div>
				</div>
			</div>
		</div>
		
<script src="../common/jquery/jquery-1.11.3.min.js"></script>
<script src="../common/bootstrap/bootstrap-3.3.5.min.js"></script>		
</body>

</html>
