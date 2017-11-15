<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
<!--
	function stepAction(actionType) {
		var f = document.getElementById("stepForm");
		document.getElementsByName("actionType")[0].value = actionType;
		f.submit();
	}
//-->
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
<link rel="stylesheet" type="text/css"
	href="../skin/bootstrap/css/bootstrap-3.3.5.min.css" />
<link rel="stylesheet"
	href="../skin/bootstrap/css/docs-b-platform-introduction.min.css" />
<script src="../common/jquery/jquery-1.11.3.min.js"></script>
<script src="../common/bootstrap/bootstrap-3.3.5.min.js"></script>
<style type="text/css">
			body {
				/*background-color: #EEEEEE;*/
				padding-top: 50px;
			}
			
			.selectlanguage {
				margin-top: 150px;
			}
			
			.next {
				margin-top: 50px;
			}
			.suojin{
				text-indent: 2em;
			}
			.form-horizontal .control-label{
				text-align:left;
			}
			.jumbotron{
				background-color: #FFF;
			}
			.jumbotron p{
				/*font-size: 14px;*/
			}
			.panel-footer .btn{
				width:100px;
			}
			.panel-heading strong{
	font-size:20px;
	font-family:"黑体";
}
		</style>
</head>
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
					<form id="stepForm" action="./installWizard.do" method="post" class="form-horizontal">
						<div class="panel-body">
							<div class="list-group">
								<li class="list-group-item list-group-item-warning" >
									<h4 ><b>安装信息确认</b></h4>
									<div class="control-label suojin">
										确认后，开始安装，执行脚本，重写配置文件，初始化gtiles上下文，设置安装状态。（进度提示）如果过程中发生错误，提示信息!
									</div>
								</li>
							</div>
							<div class="form-group">
								<input type="hidden" name="actionType">
								<input type="hidden" name="code" value="installConfirm">
							</div>
						</div>
						<div class="panel-footer">
							<div class="btn-group-justified">
								<div class="pull-right">
									<input type="button" value="上一步" onclick="stepAction('previous')" class="btn btn-primary" />
									<input type="button" value="开始安装" onclick="stepAction('next')"  class="btn btn-primary" />
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	<!-- <form id="stepForm" method="post" action="./installWizard.do">
	检测安装声明是否接受<br>
	安装信息确认
	<p>
	确认后，开始安装，执行脚本，重写配置文件，初始化gtiles上下文，设置安装状态。（进度提示）<p>
	如果过程中发生错误，提示信息
	<input type="hidden" name="actionType">
	<input type="hidden" name="code" value="installConfirm">
	<p>
	<input type="button" value="上一步" onclick="stepAction('previous')">
	<input type="button" value="开始安装" onclick="stepAction('next')">
</form> -->

</body>
</html>
