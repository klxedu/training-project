<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
<link rel="stylesheet" type="text/css"
	href="../skin/bootstrap/css/bootstrap-3.3.5.min.css" />
<link rel="stylesheet" type="text/css"
	href="../skin/bootstrap/css/docs-b-platform-introduction.min.css" />
<script src="../common/jquery/jquery-1.11.3.min.js"></script>
<script src="../common/bootstrap/bootstrap-3.3.5.min.js"></script>
<style>
body {
	padding-top: 50px;
	/*font-family: "microsoft yahei";*/
}

.jumbotron {
	background-color: #fff;
}

.panel-footer .btn {
	width: 100px;
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
		document.getElementsByName("actionType")[0].value = actionType;
		f.submit();
	}
//-->
</script>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand nav_top" href="#">Gtiles framework</a>
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
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
				<form id="stepForm" method="post" action="./installWizard.do"
					class="form-horizontal">
					<div class="panel-body">
						<h4 class="col-sm-offset-2">
							<b>数据库连接配置:</b>
						</h4>
						<div class="form-group">
							<label for="databaseType"
								class="col-sm-offset-2 col-sm-2 control-label">数据库类型:</label>
							<div class="col-sm-4">
								<select name="databaseType" id="databaseType"
									class="form-control">
									<option value="MySQL"
										<c:if test="${info.databaseType == 'MySQL'}">selected</c:if>>MySQL</option>
									<option value="Oracle"
										<c:if test="${info.databaseType == 'Oracle'}">selected</c:if>>Oracle</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="databaseDriver"
								class="col-sm-offset-2 col-sm-2 control-label">数据库驱动类型:</label>
							<div class="col-sm-4">
								<input type="text" name="databaseDriver" value=""
									id="databaseDriver" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="databaseUrl"
								class="col-sm-offset-2 col-sm-2 control-label">连接URL:</label>
							<div class="col-sm-4">
								<input type="text" name="databaseUrl" id="databaseUrl"
									class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="databaseUser"
								class="col-sm-offset-2 col-sm-2 control-label">用户:</label>
							<div class="col-sm-4">
								<input type="text" name="databaseUser" id="databaseUser"
									class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="password"
								class="col-sm-offset-2 col-sm-2 control-label">密码:</label>
							<div class="col-sm-4">
								<input type="text" name="password" id="password"
									class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<input type="hidden" name="actionType" /> <input type="hidden"
								name="code" value="installStep_2_1" />
						</div>
						<div class="form-group">
							<div class="col-sm-offset-4 col-sm-4">
								<input type="button" value="测试连接" class="btn btn-default btn-sm" />
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<div class="btn-group-justified">
							<div class="pull-right">
								<input type="button" value="上一步"
									onclick="stepAction('previous')" class="btn btn-primary" /> <input
									type="button" value="下一步" onclick="stepAction('next')"
									class="btn btn-primary" />
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>

	</div>
	<%-- <form id="stepForm" method="post" action="./installWizard.do">
		检测安装声明是否接受<br> 数据库连接配置 <br> 数据库类型：
		<select
			name="databaseType">
			<option value="MySQL"
				<c:if test="${info.databaseType == 'MySQL'}">selected</c:if>>MySQL</option>
			<option value="Oracle"
				<c:if test="${info.databaseType == 'Oracle'}">selected</c:if>>Oracle</option>
		</select><br> 数据库驱动类：<input type="text" name="databaseDriver"
			value="<c:out value="${info.databaseDriver}" />"><br>
		连接URL：<input type="text" name="databaseUrl"
			value="<c:out value="${info.databaseUrl}" />"><br> 用户：<input
			type="text" name="databaseUser"
			value="<c:out value="${info.databaseUser}" />"><br> 密码：<input
			type="password" name="databasePassword"
			value="<c:out value="${info.databasePassword}" />"><br>

		<input type="hidden" name="actionType"> <input type="hidden"
			name="code" value="installStep_2_1"> <input type="button"
			value="测试连接">
		<p>
			<input type="button" value="上一步" onclick="stepAction('previous')">
			<input type="button" value="下一步" onclick="stepAction('next')">
	</form> --%>

</body>
</html>
