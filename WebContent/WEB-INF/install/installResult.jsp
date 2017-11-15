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
<link rel="stylesheet"
	href="../skin/bootstrap/css/docs-b-platform-introduction.min.css" />
<script src="../common/jquery/jquery-1.11.3.min.js"></script>
<script src="../common/bootstrap/bootstrap-3.3.5.min.js"></script>
<style type="text/css">
			body {
				padding-top: 50px;
			}
			
			.jumbotron {
				background-color: #FFF;
			}
			
			.btn {
				width: 100px;
			}
			.panel-heading strong{
	font-size:20px;
	font-family:"黑体";
}
		</style>
<script>
	function gotoHomePage() {
		location.href = "${pageContext.request.contextPath}/workbench/index.html";
}
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
					<div class="panel-body">
						<c:if test="${error != null && error != ''}">
							<div class="alert alert-danger" role="alert">安装失败：${error }</div>
						</c:if>
						<c:if test="${error == null || error == ''}">
							<div class="alert alert-success" role="alert">安装成功！</div>
							<input type="button" value="开始使用" onclick="gotoHomePage()" class="btn btn-primary pull-right" />
						</c:if>
						
					</div>
				</div>
			</div>
		</div>
		<%-- <c:if test="${error != null && error != ''}">
		安装失败：${error }
		</c:if>
		<c:if test="${error == null || error == ''}">
		安装成功！
		<input type="button" value="开始使用" onclick="gotoHomePage()">
		</c:if> --%>
</body>
</html>
