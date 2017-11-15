<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Index</title>
		<link rel="stylesheet" type="text/css" href="../skin/bootstrap/css/bootstrap-3.3.5.min.css" />
		<link rel="stylesheet" href="../skin/bootstrap/css/docs-b-platform-introduction.min.css" />
		<script src="../common/jquery/jquery-1.11.3.min.js"></script>
		<script src="../common/bootstrap/bootstrap-3.3.5.min.js"></script>
	<style>
		body{
			padding-top: 50px;
		}
			
		.jumbotron {
			background-color: #FFF;
		}
			
		.btn {
			width: 100px;
		}
		center h3{
			margin:30px auto;
		}
		.panel-heading strong{
	font-size:20px;
	font-family:"黑体";
}
	</style>
</head>
<script type="text/javascript">
<!--
	function stepAction(actionType) {
		var f = document.getElementById("stepForm");
		document.getElementsByName("actionType")[0].value=actionType;
		f.submit();
	}
//-->
</script>
<body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
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
						<li><a href="#" target="_blank">平台说明</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="jumbotron">
			<div class="container">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<strong>安装向导</strong>
					</div>
					<form class="form-horizontal" id="stepForm" method="post" action="./installWizard.do">
						<div class="panel-body">
							<center><h3>Gtiles安装向导欢迎页面！</h3></center>
							<div class="form-group">
					`			<label class="col-sm-2 control-label col-sm-offset-2" for="inputEmail">请选择安装语言：</label>
								<div class="col-sm-4">
									<select class="form-control" name="language">
  										<option value="zh_CN" <c:if test="${info.language == 'zh_CN'}">selected</c:if>>中文</option>
										<option value="en_US" <c:if test="${info.language == 'en_US'}">selected</c:if>>英文</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<input type="hidden" name="actionType" />
								<input type="hidden" name="code" value="install" />
							</div>
						</div>
						<div class="panel-footer">
							<div class="btn-group-justified">
								<div class="pull-right">
									<button type="button" class="btn btn-primary" onclick="stepAction('next')">下一步</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
</body>
</html>
